module "vpc" {
  source           = "./modules/vpc"
  name             = var.name
  region           = var.region
  eks_cluster_name = var.eks_cluster_name
}