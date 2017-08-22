resource "aws_internet_gateway" "Koijam-Igw" {
  vpc_id = "${aws_vpc.Koijam-VPC.id}"

  tags {
    Name = "Koijam-Igw"
  }
} 
