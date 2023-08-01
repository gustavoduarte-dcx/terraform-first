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


variable "availability_zones" {
  description = "Número de zonas de disponibilidade"
  default     = "<%=customOptions.AZs%>"
}

variable "public_subnet_count" {
  description = "Quantidade de subnets públicas"
  default     = "<%=customOptions.publicSubnets%>"
}

variable "private_subnet_count" {
  description = "Quantidade de subnets privadas"
  default     = "<%=customOptions.privateSubnets%>"
}

