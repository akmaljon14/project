resource "aws_lb" "lb" {
  name               = "group4-blue-green"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_tls.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id, aws_subnet.subnet3.id]

  tags = {
    Environment = "group4"
  }
}
