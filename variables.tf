variable "access_key" {
    type = string
  
}

variable "secret_key" {
    type = string
}

variable "vpc_name" {
    type = string
    default = "<%=customOptions.vpcName%>"
  
}

variable "vpc_cidr_block" {
    type = string
    default = "<%=customOptions.vpcCidr%>"
}

