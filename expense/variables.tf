variable "common_tags"{

      type = map

    default = {

     Project = "expense"
     Envirnment = "DEV"  
     terraform = "true"
    }
}

variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}

variable "zone_id"{

   default = "Z019957010266UCH6QZST"

}
variable "domain_name" {

    default = "prameela.online"
  
}