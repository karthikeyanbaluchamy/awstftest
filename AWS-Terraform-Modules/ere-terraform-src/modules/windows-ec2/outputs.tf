output "instance_ids" {
  description = "IDs of the Windows EC2 instances"
  value       = aws_instance.windows[*].id
}


output "private_ips" {
  description = "Private IP addresses of the Windows EC2 instances"
  value       = aws_instance.windows[*].private_ip
}