output "instance" {
  value = "${aws_instance.Koijam-Instance.public_ip}"
}
output "rds" {
  value = "${aws_db_instance.mariadb.endpoint}"
}
