variable "vpc_cluster_name" {
  description = "The name to use for all the cluster resources"
  default = "my_tf_cluster_name"
}

variable "vpc_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  default = "my_s3_bucket_name"
}

variable "vpc_remote_state_key" {
  description = "The path for the database's remote state in S3"
}

variable "vpc_instance_tenancy" {
  description = "VPC instance tenancy preference"
  default = "default"
}

variable "vpc_enable_dns_support" {
  description = "enable DNS Support?"
  default = true
}

variable "vpc_enable_dns_hostnames" {
  description = "enable DNS Hostnames?"
  default = true
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "VPC name"
  default = "my_vpc_name"
}

variable "vpc_region" {
  description = "AWS Region"
  default = "eu-west-1"
}

variable "vpc_env" {
  description = "The environment PROD / STAGE / DEV"
  default = "DEV"
}
