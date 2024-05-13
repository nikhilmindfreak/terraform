
resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key and each.value , each. key is variable thats iterate all the map
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0d41e315f829ef112"] # replace with you SG ID  it is hard code
    instance_type = each.value # each value because instance type is value
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}