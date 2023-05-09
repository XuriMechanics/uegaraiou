output "subnet_a_id" {
  value = aws_subnet.subnet_a.id
}

output "subnet_b_id" {
  value = aws_subnet.subnet_b.id
}

output "security_group_id" {
  value = aws_security_group.my_security_group.id
}

output "aws_vpc_id" {
  value = "aws_vpc.my_vpc.id"
}
