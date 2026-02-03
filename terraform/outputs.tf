output "webserverip" {
    value = aws_ec2_instance.web_server.public_ip
}