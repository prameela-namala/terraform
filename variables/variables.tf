variable "ami_id"{
    type = string
    default= "ami-09c813fb71547fc4f"
    description = "this the ami of devops-practice RHEL09"
}



variable "environment" {
    default = "dev"
    type = string
}


variable "common_tags" {

    type = map

    default = {

     Project = "expense"
     Envirnment = "DEV"  
     terraform = "true"
    }
}

variable "sg_name"  {
default = "allow_ssh"

}

variable "description" {

default = "allow  ssh port number 22"

}

variable "from_port"{

default = 22
type = number

}

variable "to_port" {
default = 22
type = number

}

variable "protocol" {

    default = "tcp"
}

variable "ingress_cidr"{

    type = list(string)
    default =["0.0.0.0/0"]
}

variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]

  
}