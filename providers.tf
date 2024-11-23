terraform {
  required_providers {
    selectel = {
      source  = "selectel/selectel"
      version = "5.3.0"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "2.0.0"
    }
  }

  backend "s3" {
    endpoints = {
      s3 = "https://s3.ru-1.storage.selcloud.ru"
    }
    key                         = "terraform.tfstate"
    region                      = "ru-1"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    skip_metadata_api_check     = true
  }

  required_version = "~> 1.8.0"
}

provider "selectel" {
  domain_name = var.domain_name
  username    = var.service_account_username
  password    = var.service_account_password
}

# TODO
provider "openstack" {
  auth_url    = "https://cloud.api.selcloud.ru/identity/v3"
  domain_name = var.domain_name
  tenant_id   = ""
  user_name   = var.service_account_username
  password    = var.service_account_password
  region      = var.az_pool
}
