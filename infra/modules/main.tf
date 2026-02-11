resource "aws_instance" "module-instance" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = var.security_groups
    tags = {
      name = dev
    }


}