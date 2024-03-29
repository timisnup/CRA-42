resource "aws_autoscaling_group" "my-auto-sg" {
  name                      = "autocsaling-group"
  max_size                  = 5
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 4
  force_delete              = true
  launch_configuration      = aws_launch_configuration.asg-launch-config.name
  vpc_zone_identifier       = [aws_subnet.pub-sub-1.id]
}


resource "aws_launch_configuration" "asg-launch-config" {
  name                        = "asg_config"
  image_id                    = var.instance_ami
  instance_type               = "t2.micro"
  security_groups             = [aws_security_group.sec-group.id]
  key_name                    = "timmie"
  associate_public_ip_address = true
}