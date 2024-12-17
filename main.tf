provider "aws" {
region = var.aws_region
}

# Create an S3 bucket
resource "aws_s3_bucket" "example_bucket" {
bucket = var.s3_bucket_name

tags = {
Name = "MyS3Bucket"
Environment = "Dev"
}
}

# Create an EC2 instance
resource "aws_instance" "example_instance" {
ami = var.ec2_ami_id # AMI ID (e.g., Amazon Linux 2)
instance_type = var.ec2_instance_type # EC2 instance type

tags = {
Name = "MyEC2Instance"
}
}

# Output the details
output "s3_bucket_name" {
value = aws_s3_bucket.example_bucket.id
}

output "ec2_public_ip" {
value = aws_instance.example_instance.public_ip
}

