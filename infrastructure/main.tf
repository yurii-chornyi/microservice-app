provider "aws" {
  region = "us-east-1"  # Or your desired AWS region
}

terraform {
  backend "s3" {
    bucket = var.bucket_name
    key    = "microservice-app.tfstate"  # Replace with desired state file name
    region = "us-east-1"                  # Or your desired AWS region
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI ID, replace with your own
  instance_type = "t2.micro"               # Example instance type, adjust as needed
}

# Output the instance's public IP address
output "public_ip" {
  value = aws_instance.example.public_ip
}
