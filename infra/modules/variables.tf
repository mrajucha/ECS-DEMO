variable "ami" {
    type = string
    #default = linux_ami
}

variable "instance_type" {
    type = string  
}

variable "security_groups" {
  type = string
}