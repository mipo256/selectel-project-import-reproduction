#!/bin/bash

terraform init -backend-config=secret.backend.tfvars
terraform plan -generate-config-out=generated.tf -var='env=dev'