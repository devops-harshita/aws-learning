data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.name
  }
  provisioner "local-exec" {
    command = "echo 'Creation SUccessfull' >> creation.txt"
  }
  provisioner "local-exec" {
    when = destroy
    command = "echo 'Destroy successfull' >> destroy.txt"
  }
}