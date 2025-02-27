# RSA key of size 4096 bits
resource "tls_private_key" "mykey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "pvt_key_file" {
    filename = "mypvtkey.pem"
    content = tls_private_key.mykey.private_key_pem
}

resource "local_file" "pub_key_file" {
    filename = "mypubkey.pem"
    content = tls_private_key.mykey.public_key_openssh
}

resource "aws_key_pair" "aws_key" {
  key_name   = "ec2-key-from-terraform"
  public_key = tls_private_key.mykey.public_key_openssh
}