resource "aws_eks_cluster" "eks-cluster" {
  name     = var.eks_name
  role_arn = var.eks_cluster_role_arn
  version  = var.eks_cluster_version

  vpc_config {
    #vpc_id = var.eks_vpc_id
    subnet_ids              = var.eks_vpc_config_subnet_ids
    endpoint_private_access = var.eks_endpoint_private_access
    endpoint_public_access  = var.eks_endpoint_public_access
    security_group_ids      = var.eks_security_group_ids
  }

  tags = {
    Name        = var.eks_tag_Name
    Environment = var.eks_tag_Environment
  }
  timeouts {
    create = "30m"
  }

# Note:- We are using existing EKS Cluster Role and policies are already attached the role,
#        Below commented aws_iam policy is to create and attach polices, which we are not using.

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  ## depends_on = [
  ##  aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy,
  ##  aws_iam_role_policy_attachment.example-AmazonEKSVPCResourceController,
  ##]

}

output "arn"  {
  value = aws_eks_cluster.eks-cluster.arn
}

output "id"  {
  value = aws_eks_cluster.eks-cluster.id
}

output "endpoint" {
  value = aws_eks_cluster.eks-cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.eks-cluster.certificate_authority[0].data
}
