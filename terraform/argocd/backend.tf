terraform {
  backend "s3" {
    bucket         = "my-mlflow-goit-hw7-bucket-2024"
    key            = "argocd/terraform.tfstate"
    region         = "eu-central-1"
    use_lockfile   = true
    encrypt        = true
  }
}
