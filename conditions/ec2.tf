resource "aws_instance" "db" {
    ami = var.image_id
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
}                                           

# above is condition expression       #if true above runs t3.small or false means t3.micro