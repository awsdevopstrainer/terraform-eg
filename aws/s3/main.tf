resource "aws_s3_bucket" "example" {
  bucket = "visualpath-s3-terraform-class"
}

resource "aws_s3_object" "myobject" {
  bucket = aws_s3_bucket.example.id
  key    = "mytext.txt"
  source = ".//mytext.txt"
}