data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "my-mlflow-goit-hw7-bucket-2024"
    key    = "eks/terraform.tfstate"
    region = "eu-central-1"
  }
}
