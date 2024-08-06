provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "First_ec2_by_using_terrraform" {
    ami = "ami-0ad21ae1d0696ad58"
    instance_type = "t2.micro"
    # public_key= " "
    #vpc_security_group_ids = ["vpc-0920e9e1d645c576e"]
    subnet_id = "subnet-079be55a8cf563fe9"
    key_name = "key_1_pair"
    count = 1
    tags = {
        Name= "Anshu_EC2"
    }
  
}