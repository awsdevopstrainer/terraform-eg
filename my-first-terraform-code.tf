resource "local_file" "myfile" {
    count = length(var.my_filename)
  filename = var.my_filename[count.index]
  content  = "Welcome to first terraform code - thank you"
}

resource "local_file" "newfile" {
  filename = "newocalfile.txt"
  content  = "Welcome to new file. Welcome ${random_pet.mypetname.id} "
}

resource "random_pet" "mypetname" {
    length = 1
    prefix = "Mr"
    separator = "."
}

