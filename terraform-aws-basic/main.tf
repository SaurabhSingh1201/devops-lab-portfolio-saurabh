provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "MyEC2Instance"
  }
}

output "instance_id" {
  value = aws_instance.my_ec2.id
}