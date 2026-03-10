
data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}


resource "aws_instance" "windows" {
  count                  = var.instance_count
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnets.default.ids[0]
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name
  associate_public_ip_address = false

  tags = merge(
    {
      Name = "${var.name}-${count.index + 1}"
    },
    var.tags
  )

}

