variable "custom_prefix" {
  description = "Custom prefix for the subdomain"
  default = "Craigums.123456"
}

variable "domain_name" {
  description = "Base domain name"
  default     = "kikrr.cloud"
}

# This block uses the existing hosted zone
data "aws_route53_zone" "example" {
  name = var.domain_name
}

# This block creates a new hosted zone
resource "aws_route53_zone" "example" {
  name = var.domain_name
}

resource "aws_acm_certificate" "example" {
  domain_name       = "*.${var.domain_name}"
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "example" {
  count = length(var.custom_prefix) > 0 ? 1 : 0

  name    = "${var.custom_prefix}.${data.aws_route53_zone.example.name}"
  zone_id = data.aws_route53_zone.example.zone_id
  type    = "A"

  ttl = "60"

  records = ["${aws_instance.webserver[count.index].public_ip}"]
}

#resource "aws_instance" "example" {
#  ami           = "ami-0c55b159cbfafe1f0" # Replace with your AMI ID
#  instance_type = "t2.micro"
#
#  // Add other instance configurations as needed
#
#  tags = {
#    Name = "example-instance"
#  }
#}
