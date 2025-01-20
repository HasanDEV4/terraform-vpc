vpc_name             = "UAT-vpc"
cidr_block           = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
instance_type        = "t2.micro"
ami_id               = "ami-xxxxxxxx"
key_name             = "my-key-pair"
region               = "us-west-2"
