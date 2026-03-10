aws_region = "us-east-1"
vpc_id     = "vpc-0e7bdd876ab40e4f2"

sg_name        = "web-sg-test-ere"
sg_description = "Security group for ere"

ingress_rules = [
  {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

egress_rules = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

tags = {
  Name        = "web-sg-test-ere"
  Environment = "EVS ERE"
  Owner       = "EVS"
  Project     = "ERE"
  ManagedBy   = "Terraform"
}
