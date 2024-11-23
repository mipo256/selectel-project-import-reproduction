#!/bin/bash

terraform init -backend-config=secret.backend.tfvars
terraform apply -var='env=dev'