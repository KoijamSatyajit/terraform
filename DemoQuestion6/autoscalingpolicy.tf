# scale up alarm

resource "aws_autoscaling_policy" "example-cpu-policy" {
  name                   = "example-cpu-policy"
  autoscaling_group_name = "${aws_autoscaling_group.example-autoscaling.name}"
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = "1"
  cooldown               = "300"
  policy_type            = "SimpleScaling"
}


# scale down alarm
resource "aws_autoscaling_policy" "example-cpu-policy-scaledown" {
  name                   = "example-cpu-policy-scaledown"
  autoscaling_group_name = "${aws_autoscaling_group.example-autoscaling.name}"
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = "-1"
  cooldown               = "300"
  policy_type            = "SimpleScaling"
}



