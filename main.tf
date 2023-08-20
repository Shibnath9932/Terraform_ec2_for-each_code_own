resource "aws_instance" "shibnath-webserver" {
    count         = 1 # as per the mnetion count ec2 instance will be created
    ami           = var.ami
    instance_type = var.instance_type
    key_name = "terraform-ec2" #create key and paste the key name from console
  tags = {
    name = "prod_server"
    }
}