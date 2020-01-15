variable "default_cidr" {
  type = string
  description = "Default subnet in CIDR notation."
  default = "10.0.0.0/16"
}


variable "subnets" {
  type = map
  description "Map of subnets"
  default =  {
    subnet1 = { 
      name =  "example-vpc-private-a1"
      cidr =  "10.0.1.0/24"
      availability_zone = "$us_east_1a"
    },
    subnet2 = { 
      name =  "example-vpc-private-a2"
      cidr =  "10.0.2.0/24"
      availability_zone = "us_east_1a"
    }
  }
}    

variable "nat_gateways" {
  type = map
  decription "Map of nat gateways"
  default = {}


}