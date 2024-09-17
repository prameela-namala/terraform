variable "instance_names"{


type = list(string)
default = [ "mysql","backend", "frontend" ]
}


variable "zone_id" {
  
  
   default = "Z019957010266UCH6QZST"


}

variable "domain_name" {

    default = "prameela.online"
  
}