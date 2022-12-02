module "network-interface" {
  source = "./modules/subnet"
  subnet-id = "subnet-0c20eb904ec065bcf"
}

module "my-ec2-instances" {
  source = "./modules/ec2"
  interface-id = module.network-interface.inface-if
  ami-id = "ami-062df10d14676e201"
}
