resource "aws_launch_configuration" "Koijam-launchconfig" {
  name_prefix          = "Koijam-launchconfig"
  image_id             = "ami-03e7f667"
  instance_type        = "t2.micro"
  key_name             = "${aws_key_pair.mykeypair.key_name}"
  security_groups      = ["${aws_security_group.Koijam-SG.id}"]
  user_data = "${file("script.sh")}"
}

resource "aws_autoscaling_group" "Koijam-AutoS" {
  name                 = "Koijam-AutoS"
  vpc_zone_identifier  = ["${aws_subnet.pubsub-1.id}", "${aws_subnet.pubsub-1.id}"]
  launch_configuration = "${aws_launch_configuration.Koijam-launchconfig.id}"
  min_size             = 2
  max_size             = 2
  health_check_grace_period = 300
  health_check_type = "ELB"
  load_balancers = ["${aws_elb.Koijam-elb.name}"]
  force_delete = true

  tag {
      key = "Name"
      value = "Koijam  ec2 instance"
      propagate_at_launch = true
  }
}

