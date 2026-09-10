location            = "Australia East"
resource_group_name = "koalatech-week08-rg"

# Must be globally unique. If Azure rejects it as taken, add a digit and retry.
acr_name             = "sit722acrtf2306357w08"

# Must be globally unique, 3-24 lowercase letters/digits. If Azure rejects it as taken, add a digit and retry.
storage_account_name = "sit722storagetf230635708"

aks_cluster_name = "aks-sit722-week08"
aks_dns_prefix   = "koalatechw08"

# Task 8.1P requires 3 nodes: staging and production both run persistent PostgreSQL workloads.
aks_node_count   = 3
aks_node_vm_size = "Standard_D2s_v3"

environment = "staging-production"

tags = {
    Project    = "KoalaTech Course Platform"
    ManagedBy  = "Terraform"
    Practical  = "Week08"
    Environment = "Week08-CD"
}
