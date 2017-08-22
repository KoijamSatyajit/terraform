resource "aws_nat_gateway" "natgw" {
  allocation_id = "${aws_eip.example_eip.id}"
  subnet_id     = "${aws_subnet.pubsub-3.id}"

}
