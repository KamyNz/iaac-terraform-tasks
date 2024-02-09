import {
  to = aws_vpc.dev-efimerio-caoba
  id = "vpc-0ab9fb9eb503155d3"
}

import {
  to = aws_instance.dev-efimerio-caoba
  id = "i-0ad47e2d782bd602d"
}

import {
  to = aws_security_group.instance_security_group
  id = "sg-07da763152d0417c9"
}

import {
  to = aws_lb.alb-mlflow-awscday
  id = "arn:aws:elasticloadbalancing:us-east-1:254132397434:loadbalancer/app/alb-mlflow-awscday/3b1a6e81b09898eb"
}

import {
  to = aws_lb_target_group.tg-awscday
  id = "arn:aws:elasticloadbalancing:us-east-1:254132397434:targetgroup/tg-awscday/6f961ab972a0841a"
}

import {
  to = aws_lb_listener.alb-mlflow-awscday
  id = "arn:aws:elasticloadbalancing:us-west-2:187416307283:listener/app/alb-mlflow-awscday/3b1a6e81b09898eb/943be79eefacf3dc"
}

import {
  to = aws_s3_bucket.bucket
  id = "mlflow-artifact-store-demo-final"
}

