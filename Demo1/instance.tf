resource "aws_instance" "example" {
  ami           = "ami-489f8e2c"
  instance_type = "t2.micro"
  user_data = "${file("script.sh")}"
  tags {
     Name = "Koijam Singh"
  }
  key_name = "${aws_key_pair.mykeypair.key_name}"

}
