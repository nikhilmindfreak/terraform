resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0d41e315f829ef112"]   # our security group
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}