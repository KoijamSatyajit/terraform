# Subnets
resource "aws_subnet" "pubsub-1" {
    vpc_id = "${aws_vpc.Koijam-VPC.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-2a"

    tags {
        Name = "pubsub-1"
    }
}
resource "aws_subnet" "pubsub-2" {
    vpc_id = "${aws_vpc.Koijam-VPC.id}"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-2b"

    tags {
        Name = "pubsub-2"
    }
}
