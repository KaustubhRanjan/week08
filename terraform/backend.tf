# Remote state in Azure Storage so the GitHub Actions pipeline (and you,
# locally) share one Terraform state file.
#
# The backend settings are passed at init time, e.g.
#   terraform init \
#     -backend-config="resource_group_name=<tfstate RG>" \
#     -backend-config="storage_account_name=<tfstate storage account>" \
#     -backend-config="container_name=tfstate" \
#     -backend-config="key=week08.terraform.tfstate"
terraform {
  backend "azurerm" {}
}
