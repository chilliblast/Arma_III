provider "aws" {
        region = "eu-west-1"
}

module "vpc"      {
        source = "git@github.com:chilliblast/Arma_III.git//services/vpc?ref=v0.0.1"

        vpc_cluster_name        = "Arma_III"
        vpc_remote_state_bucket = "awslab-terraform-up-and-running-state"
        vpc_remote_state_key    = "Arma_III/services/vpc/terraform.tfstate"

	vpc_instance_tenancy	= "default"
	vpc_enable_dns_support	= "true"
	vpc_enable_dns_hostnames= "true"
	
	vpc_cidr		= "10.0.0.0/16"
	vpc_name		= "tf_arma_vpc"
	vpc_region		= "eu-west-1"

	vpc_env			= "DEV"
}

resource "aws_vpc" "mod" {
	cidr_block = "${var.vpc_cidr}"
	instance_tenancy = "${var.vpc_instance_tenancy}"
	enable_dns_hostnames = "${var.vpc_enable_dns_hostnames}"
	enable_dns_support = "${var.vpc_enable_dns_support}"

	tags {
		"Name" = "${var.vpc_name}"
		"env" = "${var.vpc_env}"
		"stack" = "${var.vpc_cluster_name}"
		
	}
}
