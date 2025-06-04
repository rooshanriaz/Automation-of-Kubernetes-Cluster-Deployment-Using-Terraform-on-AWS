// Variables for Reddit Clone EKS Deployment
variable "region" {
  description = "AWS region for all resources"
  default     = "us-east-1"
}

variable "vpc-name" {
  description = "Name of the VPC"
}

variable "igw-name" {
  description = "Name of the Internet Gateway"
}

variable "rt-name2" {
  description = "Name of the second route table"
}

variable "subnet-name" {
  description = "Name of the first subnet"
}

variable "subnet-name2" {
  description = "Name of the second subnet"
}

variable "security-group-name" {
  description = "Name of the security group"
}

variable "iam-role-eks" {
  description = "Name of the IAM role for EKS"
}

variable "iam-role-node" {
  description = "Name of the IAM role for EC2 node"
}

variable "iam-policy-eks" {
  description = "Name of the IAM policy for EKS"
}

variable "iam-policy-node" {
  description = "Name of the IAM policy for nodes"
}

variable "cluster-name" {
  description = "Name of the EKS cluster"
}

variable "eksnode-group-name" {
  description = "Name of the EKS node group"
}

variable "eks-version" {
  description = "Kubernetes version for EKS cluster"
  default     = "1.28"
}