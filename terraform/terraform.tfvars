# Azure for Students: Terraform creates the resource group itself.
location                    = "Australia East"
resource_group_name         = "koalatech-week08-rg"
use_existing_resource_group = false

# The GitHub service principal only has Contributor, which cannot create
# role assignments, so AKS pulls from ACR with an image pull secret instead.
grant_acr_pull_role = false

# Must be globally unique. If Azure rejects it as taken, add a digit and retry.
acr_name = "sit722acrtf2306357w08"

# Must be globally unique, 3-24 lowercase letters/digits. If Azure rejects it as taken, add a digit and retry.
storage_account_name = "sit722storagetf230635708"

aks_cluster_name = "aks-sit722-week08"
aks_dns_prefix   = "koalatechw08"

# 2 nodes keeps within the Azure for Students vCPU quota (2 x 2 vCPU)
# and still runs staging, production and monitoring.
aks_node_count   = 2
aks_node_vm_size = "Standard_D2s_v3"

environment = "staging-production"

tags = {
  Project     = "KoalaTech Course Platform"
  ManagedBy   = "Terraform"
  Practical   = "Week08"
  Environment = "Week08-CD"
}
