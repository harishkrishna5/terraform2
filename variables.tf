variable "aws_region" {
description = "The AWS region where resources will be created"
default = "us-east-1"
}

# EC2 Instance details
variable "ec2_ami_id" {
description = "The AMI ID for the EC2 instance"
default = "ami-0c55b159cbfafe1f0" # Example for Amazon Linux 2
}

variable "ec2_instance_type" {
description = "The type of EC2 instance to create"
default = "t2.micro"
}

# S3 bucket name
variable "s3_bucket_name" {
description = "The name of the S3 bucket to create"
default = "my-unique-s3-bucket-12345" # Change to a unique name
}

