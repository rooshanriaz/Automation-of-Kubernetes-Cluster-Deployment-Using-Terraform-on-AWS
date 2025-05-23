resource "aws_eks_cluster" "eks-cluster" {
  name     = var.cluster-name
  role_arn = aws_iam_role.EKSClusterRole.arn
  vpc_config {
    subnet_ids         = [aws_subnet.public-subnet1.id, aws_subnet.public-subnet2.id]
    security_group_ids = [aws_security_group.sg.id]
  }

  version = var.eks-version

  depends_on = [aws_iam_role_policy_attachment.AmazonEKSClusterPolicy]
}