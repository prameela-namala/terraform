variable "instances" {
    type = map
    default = {
     
     mysql = "t3.small"
     frontend = "t3.micro"
     backend = "t3.small"
    
    }
}
  variable "zone_id" {
  
  
   default = "Z019957010266UCH6QZST"


}

variable "domain_name" {

    default = "prameela.online"
  
}

variable "ingress_rules"{
default = [

{
from_port = 22
to_port =22
protocol ="tcp"
cidr_blocks = ["0.0.0.0/0"]
},
{
from_port = 80
to_port =80
protocol ="tcp"
cidr_blocks = ["0.0.0.0/0"]
},
{
from_port = 3306
to_port =3306
protocol ="tcp"
cidr_blocks = ["0.0.0.0/0"]
}

]

}