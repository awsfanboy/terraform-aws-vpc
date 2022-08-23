module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.env}-vpc"
  cidr = var.vpc_cidr

  azs             = ["${var.az_a}", "${var.az_b}"]
  private_subnets = ["${var.private_subnet_a}", "${var.private_subnet_b}"]
  public_subnets  = ["${var.public_subnet_a}", "${var.public_subnet_b}"]
  database_subnets = ["${var.database_subnet_a}", "${var.database_subnet_b}"]


  enable_nat_gateway = true

  # For HA set this value to "false".
  single_nat_gateway = true

  # Enable DNS Support
  enable_dns_hostnames = true
  enable_dns_support = true

  # Logs
  create_flow_log_cloudwatch_iam_role = true
  create_flow_log_cloudwatch_log_group = true
  enable_flow_log = true

  tags = local.tags_all
}