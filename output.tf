output "s3_bucket_name" {
description = "The name of the created S3 bucket"
value = aws_s3_bucket.example_bucket.id
}

output "ec2_public_ip" {
description = "The public IP of the created EC2 instance"
value = aws_instance.example_instance.public_ip
}
