resource "aws_instance" "web" {
  ami           = "ami-00a929b66ed6e0de6"
  instance_type = "t2.micro"
#availability_zone = "us-east-1d"
subnet_id ="subnet-07469e07cfea0a47b"
key_name = aws_key_pair.deployer.key_name
vpc_security_group_ids = [aws_security_group.allow_tls.id]
user_data = file("apache.sh")
  tags = {
    Name = "HelloWorld"
  }
}
output ec2_public_ip{
    value = aws_instance.web.public_ip
}