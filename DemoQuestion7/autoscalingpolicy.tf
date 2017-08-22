# scale up alarm

resource "aws_autoscaling_policy" "Koija-cpu-policy" {
  name                   = "Koijam-cpu-policy"
  autoscaling_group_name = "${aws_autoscaling_group.Koijam-AutoS.name}"
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = "1"
  cooldown               = "300"
  policy_type            = "SimpleScaling"
}


# scale down alarm
resource "aws_autoscaling_policy" "Koijam-cpu-policy-scaledown" {
  name                   = "Koijam-cpu-policy-scaledown"
  autoscaling_group_name = "${aws_autoscaling_group.Koijam-AutoS.name}"
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = "-1"
  cooldown               = "300"
  policy_type            = "SimpleScaling"
}



