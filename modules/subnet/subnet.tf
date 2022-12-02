resource "aws_network_interface" "ens1" {
  subnet_id   = var.subnet-id
  private_ips = ["172.31.0.100"]

  tags = {
    Name = "primary_network_interface"
  }
}
