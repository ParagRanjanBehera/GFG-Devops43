output "first_ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.gfgos[0].id
}

output "first_ec2_instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.gfgos[0].public_ip
}

output "first_ec2_instance_private_ip" {
  description = "The private IP of the EC2 instance"
  value       = aws_instance.gfgos[0].private_ip
}

output "second_ec2_instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.gfgos[1].public_ip
}