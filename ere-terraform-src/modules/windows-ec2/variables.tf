variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the Windows EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}


variable "security_group_id" {
  description = "Security Group ID for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default     = {}
}

variable "instance_count" {
  description = "Number of Windows EC2 instances to create"
  type        = number
  default     = 1

}
