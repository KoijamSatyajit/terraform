resource "aws_instance" "Koijam-Instance" {
  ami           = "ami-489f8e2c"
  instance_type = "t2.micro"
  tags {
	Name = "Koijam Instance"
   }

  # the VPC subnet
  subnet_id = "${aws_subnet.pubsub-1.id}"

  # the security group
  vpc_security_group_ids = ["${aws_security_group.Koijam-SG.id}"]

  # the public SSH key
  key_name = "${aws_key_pair.mykeypair.key_name}"

}


