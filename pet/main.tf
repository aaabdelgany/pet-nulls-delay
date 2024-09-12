terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "prefix" {
  type = string
  nullable = false
}

resource "random_pet" "this" {
  prefix = var.prefix
  length = 4
}

resource "random_password" "password" {
  length = 16
}

output "name" {
  value = jsondecode("breakme")
}
