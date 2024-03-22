provider "aws" {
  region = "us-east-1"  
}

terraform {
  backend "s3" {
    bucket = "ami-0c101f26f147fa7fd"         
    region = "us-east-1"                  
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = "t2.micro"         
  tags = {
      Name = "Gitlab instance"
  }      
}

# Output the instance's public IP address
output "public_ip" {
  value = aws_instance.example.public_ip
}
