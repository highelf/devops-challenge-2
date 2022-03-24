module "eks" {
  source           = "./modules/eks"
  eks_cluster_name = var.eks_cluster_name
  vpc_id           = module.vpc.id
  subnet_ids       = module.vpc.private_subnets
  region           = var.region
}