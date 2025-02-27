resource "aws_instance" "web" {
  ami           = "ami-053a45fff0a704a47"
  instance_type = "t2.micro"
  key_name = aws_key_pair.aws_key.id
  vpc_security_group_ids = [aws_security_group.sg_allow_ssh.id]

  tags = {
    Name = "HelloWorld"
  }
}
