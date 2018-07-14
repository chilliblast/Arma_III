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
