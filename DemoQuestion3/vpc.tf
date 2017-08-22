# Internet VPC
resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    enable_classiclink = "false"
    tags {
        Name = "mainTesting"
    }
}


# Subnets
resource "aws_subnet" "pubsub-1" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-northeast-2a"

    tags {
        Name = "pubsub-1"
    }
}
resource "aws_subnet" "pubsub-2" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-northeast-2c"

    tags {
        Name = "pubsub-"
    }
}
resource "aws_subnet" "pubsub-3" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-northeast-2c"

    tags {
        Name = "pubsub-3"
    }
}
resource "aws_subnet" "PriEc2Sub-1" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-northeast-2a"

    tags {
        Name = "PriEc2Sub-1"
    }
}
resource "aws_subnet" "PriEc2Sub-2" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.5.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-northeast-2a"

    tags {
        Name = "PriEc2Sub-2"
    }
}
resource "aws_subnet" "PriEc2Sub-3" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.6.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-northeast-2c"

    tags {
        Name = "PriEc2Sub-3"
    }
}
resource "aws_subnet" "PriEc2Sub-4" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.7.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-northeast-2c"

    tags {
        Name = "PriEc2Sub-4"
    }
}

