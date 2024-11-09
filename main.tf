provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "redhat_instance" {
  count = 2
  ami = "ami-0583d8c7a9c35822c"
  instance_type = "t2.micro"
  key_name = "TKP"
  vpc_security_group_ids = [aws_security_group.Jenkins_setup.id]
  tags = {
    Name = "Carters-RHEL-instance" 
  }
}

resource "aws_instance" "ubuntu_instance" {
  count = 2
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name = "TKP"
  vpc_security_group_ids = [aws_security_group.Jenkins_setup.id]
  tags = {
    Name = "Carters-Ubuntu-instance"
  }
}
