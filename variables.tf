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
  type        = number
  default     = "<%=customOptions.AZs%>"
}

variable "public_subnet_count" {
  description = "Quantidade de subnets públicas"
  type        = number
  default     = "<%=customOptions.publicSubnets%>"
}

variable "private_subnet_count" {
  description = "Quantidade de subnets privadas"
  type        = number
  default     = "<%=customOptions.privateSubnets%>"
}

