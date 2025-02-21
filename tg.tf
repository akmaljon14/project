resource "aws_lb_target_group" "blue-green" {
  name     = "group4-blue-green"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.group4.id
  
}


resource "aws_lb_listener" "front_end" {
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-2:266735827765:loadbalancer/app/group4-blue-green/5a1f3ef4a35c4233"
  port              = "80"
  protocol          = "HTTP"
 
  
  default_action {
    type             = "forward"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:266735827765:targetgroup/group4-blue-green/944dd464345ecb9b"
  }

}