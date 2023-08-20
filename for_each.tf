locals {
    ec2 = {
        "ec2-1" = { ami = "ami-053b0d53c279acc90", availability_zone = "us-east-1a", instance_type = "t2.micro", tag_name = "webserver-1", key_name = "terraform-ec2" }
        "ec2-2" = { ami = "ami-053b0d53c279acc90", availability_zone = "us-east-1b", instance_type = "t2.micro", tag_name = "database", key_name = "terraform-ec2" }
        "ec2-3" = { ami = "ami-053b0d53c279acc90", availability_zone = "us-east-1c", instance_type = "t2.micro", tag_name = "webserver-2", key_name = "terraform-ec2" }
    }
}

resource "aws_instance" "shibnath-webserver-test" {
    for_each = local.ec2

    ami               = each.value.ami
    availability_zone = each.value.availability_zone
    instance_type     = each.value.instance_type
    key_name          = each.value.key_name

    tags = {
        name = each.value.tag_name
    }

}