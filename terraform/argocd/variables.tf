variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster" # Зміни на назву поточного кластера
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}
