variable "instance_names" {
  type        = map
  default     = {        # {} inside this map type with key and value
    db = "t3.small"
    backend = "t3.micro"    
    frontend = "t3.micro"
  }
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "true"
    }
}

variable "domain_name" {   # must variables to update r53
    default = "devopsme.online"
}

variable "zone_id" {  # must variables to update r53
    default = "Z08884492QFPW45HM4UQO"
}