variable "instances" {
    default = [ "mongodb", "redis", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend", "mysql" ]
}

variable "zone_id" {
    default = "Z0240123A9FCWL2SEDEO"  
}

variable "domain_name" {
    default= "jrdaws.life"
}