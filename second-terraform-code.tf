resource "local_file" "lastfile" {
  filename = "lastfile.txt"
  content  = "Welcome to the last file"
}