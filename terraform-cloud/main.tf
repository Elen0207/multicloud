terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

// defininndo a região
provider "aws" {
  region  = "us-east-1"
}

// criando o s3
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "tcb-app-qa-jr"
}

//bloqueando os acessos publicos
resource "aws_s3_bucket_public_access_block" "s3_block" {
  bucket = aws_s3_bucket.s3_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

// comandos para rodar esse arquivo no terminal ou no shell da aws

/*
terraform init
terraform plan
terraform apply
*/

/*
Se a sessão do AWS CLI token no Cloud Shell expirar, executar qualquer comando AWS CLI para atualiza-lo. Exemplo:
aws s3 ls s3://tcb-app-qa-jr
*/