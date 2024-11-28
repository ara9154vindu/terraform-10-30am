variable "ami" {
  type    = string
  default = "ami-0614680123427b75e"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "vindu" {
  type    = list(string)
  default = [ "Aravind", "Cheggoju"]
}

# main.tf
resource "aws_instance" "vindu" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.vindu)

  tags = {
    Name = var.vindu[count.index]
  }
}