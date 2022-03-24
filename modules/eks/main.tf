module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "17.24.0"
  cluster_name    = local.cluster_name
  cluster_version = local.cluster_version
  subnets         = var.subnet_ids

  vpc_id = var.vpc_id

  workers_group_defaults = {
    root_volume_type = "gp2"
  }

  worker_groups = [
    {
      name                          = "worker-group-1"
      instance_type                 = var.instance_type
      additional_userdata           = "echo Hi"
      additional_security_group_ids = [aws_security_group.worker_group_one.id]
      asg_desired_capacity          = 2
    }
  ]
}


// data "aws_eks_cluster" "cluster" {
//   name = module.eks.cluster_id
// }

// data "aws_eks_cluster_auth" "cluster" {
//   name = module.eks.cluster_id
// }
