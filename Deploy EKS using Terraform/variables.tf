###################################  EKS Cluster Generic variables Values ############################################################

variable "aws_region" {}
variable "eks_name" {}
variable "eks_cluster_role_arn" {}
variable "eks_cluster_version" {}
variable "eks_tag_Name" {}
variable "eks_tag_Environment" {}
//variable "eks_vpc_id" {}                -------------------------------> # This variable is optional to create EKS Cluster.
variable "eks_vpc_config_subnet_ids" {}
variable "eks_endpoint_private_access" {}
variable "eks_endpoint_public_access" {}
variable "eks_security_group_ids" {}

###################################  EKS Node-Group-1 i.e Node-Group-1 Values #######################################################

variable "eks_node_group-1_name" {}
variable "eks_node_group-1_instanes_types" {}
variable "eks_node_group-1_role_arn" {}
variable "eks_node_group-1_subnet_ids" {}
variable "eks_node_group-1_tags_Name" {}
variable "eks_node_group-1_tags_Environment" {}
variable "eks_node_group-1_disk_size" {}
variable "eks_node_group-1_scaling_config_desired_size" {}
variable "eks_node_group-1_scaling_config_max_size" {}
variable "eks_node_group-1_scaling_config_min_size" {}
variable "eks_node_group-1_remote_access_ec2_ssh_key" {}

################################  EKS Additonal Node Group i.e (Node-Group-2) Values ################################################

# Note:- This Additional Node Group is optional if you want to create a EKS cluster with AdditionalNode Group ie. 2nd Node Group.
#        "Please uncomment the below lines if you want to create additional node-group as part of eks cluster creation."

#variable "eks_node_group-2_name" {}
#variable "eks_node_group-2_instanes_types" {}
#variable "eks_node_group-2_role_arn" {}
#variable "eks_node_group-2_subnet_ids" {}
#variable "eks_node_group-2_tags_Name" {}
#variable "eks_node_group-2_tags_Environment" {}
#variable "eks_node_group-2_scaling_config_desired_size" {}
#variable "eks_node_group-2_scaling_config_max_size" {}
#variable "eks_node_group-2_scaling_config_min_size" {}
#variable "eks_node_group-2_remote_access_ec2_ssh_key" {}
