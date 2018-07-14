data "terraform_remote_state" "db" {
        backend = "s3"

        config {
                bucket = "${var.vpc_remote_state_bucket}"
                key = "${var.vpc_remote_state_key}"
                region = "${var.vpc_region}"
        }
}
