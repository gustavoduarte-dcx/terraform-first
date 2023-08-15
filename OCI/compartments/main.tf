terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

# Providers
provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  user_ocid = var.user_ocid 
  #private_key_path = var.private_key_path
  private_key_path = file("/opt/morpheus/terraform_2023-08-15T13_26_52.941Z.pem")
  fingerprint = var.fingerprint
  region = var.region
}

# Variables
variable "tenancy_ocid" {}
variable "user_ocid" {}
#variable "private_key_path" {}
variable "fingerprint" {}
variable "region" {}


variable "compartment_pai" {default = "<%=customOptions.compartment_pai%>"}
variable "compartment_name" {default = "<%=customOptions.compartment_name%>"}
variable "compartment_description" {default = "<%=customOptions.compartment_description%>"}


# Resources

resource "oci_identity_compartment" "test_compartment" {
    #Required
    compartment_id = var.compartment_pai
    description = var.compartment_description
    name = var.compartment_name

    enable_delete = true


}

