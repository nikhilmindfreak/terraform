# search for terraform route 53

resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  #count and count.index will not work in locals   # if we use locals
  #name = local.record_name    # if we use locals
  type    = "A"
  ttl     = 1
  #count and count.index will not work in locals
  #records = local.record_value    # if we use locals
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  # if records already exists
  allow_overwrite = true
}