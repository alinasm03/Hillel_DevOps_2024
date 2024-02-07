output "public_subnet_id" {
    value = aws_subnet.main_public_subnet.id
}

output "private_subnet_id" {
    value = aws_subnet.main_private_subnet.id
}