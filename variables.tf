variable "domain_name" {
  type        = string
# TODO
  description = "Domain name of the project"
}

variable "env" {
  type        = string
  description = "Current deployment environment"
}

variable "az_pool" {
  type        = string
  default     = "ru-2"
  description = "Pool inside the datacenter to be targeted by resources"
}

variable "service_account_username" {
  type        = string
  # TODO
  description = "Username of the service account"
}

variable "service_account_password" {
  type        = string
  # TODO
  description = "Password of the service account"
}