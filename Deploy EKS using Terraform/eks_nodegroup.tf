####################################### Code Block for First Node Group ###############################################################################################

resource "aws_eks_node_group" "eks_node-group-1" {
  cluster_name      = aws_eks_cluster.eks-cluster.name
  node_group_name   = var.eks_node_group-1_name
  instance_types    = var.eks_node_group-1_instanes_types
  node_role_arn     = var.eks_node_group-1_role_arn
  subnet_ids        = var.eks_node_group-1_subnet_ids
  disk_size         = var.eks_node_group-1_disk_size 
  tags = {
    Name            = var.eks_node_group-1_tags_Name
    Environment     = var.eks_node_group-1_tags_Environment
  }
  scaling_config {
    desired_size    = var.eks_node_group-1_scaling_config_desired_size
    max_size        = var.eks_node_group-1_scaling_config_max_size
    min_size        = var.eks_node_group-1_scaling_config_min_size
  }
  remote_access {
    ec2_ssh_key               = var.eks_node_group-1_remote_access_ec2_ssh_key
    source_security_group_ids = var.eks_security_group_ids
  }

  # Note:- We are using existing Node Instance Role and policies are already attached the role, Below commented aws_iam policy is to create and attach polices, which we are not using.
  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.

  #  depends_on = [
  ##  aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy,
  ##  aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy,
  ##  aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly,
  ##]

}

####################################### Code Block for Addtional Node Group ###############################################################################################

# Note:- "Please uncomment the below lines if you want to create additional node-group as part of eks cluster creation.""

#resource "aws_eks_node_group" "eks_node-group-2" {
#  cluster_name       = aws_eks_cluster.eks-cluster.name
#  node_group_name    = var.eks_node_group-2_name
# instance_types      = var.eks_node_group-2_instanes_types
#  node_role_arn      = var.eks_node_group-2_role_arn
#  subnet_ids         = var.eks_node_group-2_subnet_ids
#  tags = {
#    Name             = var.eks_node_group-2_tags_Name
#    Environment      = var.eks_node_group-2_tags_Environment
#  }
#  scaling_config {
#    desired_size     = var.eks_node_group-2_scaling_config_desired_size
#    max_size         = var.eks_node_group-2_scaling_config_max_size
#    min_size         = var.eks_node_group-2_scaling_config_min_size
#  }

#  remote_access {
#    ec2_ssh_key               = var.eks_node_group-2_remote_access_ec2_ssh_key
#    source_security_group_ids = var.eks_security_group_ids
#  }

  # Note:- We are using existing Node Instance Role and policies are already attached the role, Below commented aws_iam policy is to create and attach polices, which we are not using.
  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  #  depends_on = [
  ##  aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy,
  ##  aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy,
  ##  aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly,
  ##]

#}
