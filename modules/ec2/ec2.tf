resource "aws_instance" "my-ec2" {
  ami           = var.ami-id
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = var.interface-id
    device_index         = 0
  }
}
