module "dev" {
  source = "../day-2-basic_code"
  ami = "ami-0614680123427b75e"
  instance_type = "t2.micro"
  key_name = "mumbai"
}