

resource "aws_subnet" "public_sub_1" {
  vpc_id                  = aws_vpc.vote_app_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public_sub_1"
    "kubernetes.io/role/elb" = "1"

  }
}

resource "aws_subnet" "public_sub_2" {
  vpc_id                  = aws_vpc.vote_app_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public_sub_2"
    "kubernetes.io/role/elb" = "1"
  }
}

  



resource "aws_subnet" "private_sub_1" {
  vpc_id                  = aws_vpc.vote_app_vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false
  tags = {
    "Name"                            = "private_sub_1"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/nti-eks-cluster" = "owned"
  }
}

resource "aws_subnet" "private_sub_2" {
  vpc_id                  = aws_vpc.vote_app_vpc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false
  tags = {
    "Name"                            = "private_sub_2"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/nti-eks-cluster" = "owned"
  }
}
