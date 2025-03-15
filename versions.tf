# Terraform Settings Block
terraform {
   required_version = ">= 1.10.5"
   required_providers {
        google = {
        source  = "hashicorp/google"
        version = ">= 6.18.0"
        }
   }
   backend "gcs" {
    bucket = "tf-9293-sandbox-terraform-backup"
    #prefix = "${terraform.workspace}/gce" #Terraform does not support dynamic values in backend.tf
    #terraform init -backend-config="bucket=tf-9293-sandbox-terraform-backup" -backend-config="prefix=drn/gce"
  }
   
 }

 provider "google" {
  project = tf-9293-sandbox
  region = asia-south1
}