locals {
  cluster_name = var.eks_cluster_name
  cluster_version = "1.21"
  region          = var.region

  tags = {
    Example    = local.cluster_name
  }
}