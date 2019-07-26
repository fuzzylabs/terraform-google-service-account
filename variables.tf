variable "location" {
  description = "The GCP Location in which resources are created"
  type        = string
}

variable "project" {
  description = "The GCP Project in which resources are created, typically $project_group-$env"
  type        = string
}

variable "name" {
  description = "The name of the service account"
  type        = string
}

variable "display_name" {
  description = "The Display Name of the service account"
  type        = string
  default     = "Provisioned by Terraform"
}

variable "roles" {
  description = "A list of roles to apply to the service account"
  type        = list
  default     = []
}
