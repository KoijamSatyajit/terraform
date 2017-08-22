resource "aws_launch_configuration" "example-launchconfig" {
  name_prefix          = "example-launchconfig"
  image_id             = "ami-03e7f667"
  instance_type        = "t2.micro"
  key_name             = "${aws_key_pair.mykeypair.key_name}"
  security_groups      = ["${aws_security_group.Koijam-SG.id}"]
  user_data = "${file("index.sh")}"
}

resource "aws_autoscaling_group" "example-autoscaling" {
  name                 = "example-autoscaling"
  vpc_zone_identifier  = ["${aws_subnet.pubsub-1.id}", "${aws_subnet.pubsub-1.id}"]
  launch_configuration = "${aws_launch_configuration.example-launchconfig.name}"
  min_size             = 1
  max_size             = 2
  health_check_grace_period = 300
  health_check_type = "EC2"
  force_delete = true

  tag {
      key = "Name"
      value = "Koijam  ec2 instance"
      propagate_at_launch = true
  }
}

