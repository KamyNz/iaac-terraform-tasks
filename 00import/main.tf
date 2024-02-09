# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-07da763152d0417c9"
resource "aws_security_group" "instance_security_group" {
  description = "Security group for EC2 instance"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 5000
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 5000
  }]
  name                   = "instance_security_group"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name = "dev-efimerio-caoba"
  }
  tags_all = {
    Name = "dev-efimerio-caoba"
  }
  vpc_id = "vpc-0ab9fb9eb503155d3"
}

# __generated__ by Terraform
resource "aws_lb" "alb-mlflow-awscday" {
  customer_owned_ipv4_pool                                     = null
  desync_mitigation_mode                                       = "defensive"
  dns_record_client_routing_policy                             = null
  drop_invalid_header_fields                                   = false
  enable_cross_zone_load_balancing                             = true
  enable_deletion_protection                                   = false
  enable_http2                                                 = true
  enable_tls_version_and_cipher_suite_headers                  = false
  enable_waf_fail_open                                         = false
  enable_xff_client_port                                       = false
  enforce_security_group_inbound_rules_on_private_link_traffic = null
  idle_timeout                                                 = 60
  internal                                                     = false
  ip_address_type                                              = "ipv4"
  load_balancer_type                                           = "application"
  name                                                         = "alb-mlflow-awscday"
  name_prefix                                                  = null
  preserve_host_header                                         = false
  security_groups                                              = ["sg-04950accb0f570f9b"]
  subnets                                                      = ["subnet-09179f4422e3e34fe", "subnet-0cd2febdefac94fc9"]
  tags = {
    Name                  = "dev-efimerio-caoba"
    OTU                   = "cmartinez-tf"
    TerminationProtection = "false"
  }
  tags_all = {
    Name                  = "dev-efimerio-caoba"
    OTU                   = "cmartinez-tf"
    TerminationProtection = "false"
  }
}

# __generated__ by Terraform
resource "aws_lb_target_group" "tg-awscday" {
  connection_termination             = null
  deregistration_delay               = "300"
  ip_address_type                    = "ipv4"
  lambda_multi_value_headers_enabled = null
  load_balancing_algorithm_type      = "round_robin"
  load_balancing_anomaly_mitigation  = "off"
  load_balancing_cross_zone_enabled  = "use_load_balancer_configuration"
  name                               = "tg-awscday"
  name_prefix                        = null
  port                               = 80
  preserve_client_ip                 = null
  protocol                           = "HTTP"
  protocol_version                   = "HTTP1"
  proxy_protocol_v2                  = null
  slow_start                         = 0
  tags = {
    Name = "dev-efimerio-caoba"
  }
  tags_all = {
    Name = "dev-efimerio-caoba"
  }
  target_type = "instance"
  vpc_id      = "vpc-0ab9fb9eb503155d3"
  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }
  stickiness {
    cookie_duration = 86400
    cookie_name     = null
    enabled         = false
    type            = "lb_cookie"
  }
}

# __generated__ by Terraform
resource "aws_vpc" "dev-efimerio-caoba" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  tags = {
    Name                  = "dev-efimerio-caoba"
    OTU                   = "cmartinez-tf"
    TerminationProtection = "false"
  }
  tags_all = {
    Name                  = "dev-efimerio-caoba"
    OTU                   = "cmartinez-tf"
    TerminationProtection = "false"
  }
}

# __generated__ by Terraform from "mlflow-artifact-store-demo-final"
resource "aws_s3_bucket" "bucket" {
  bucket              = "mlflow-artifact-store-demo-final"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags = {
    Name = "dev-efimerio-caoba"
  }
  tags_all = {
    Name = "dev-efimerio-caoba"
  }
}

# __generated__ by Terraform
resource "aws_instance" "dev-efimerio-caoba" {
  ami                                  = "ami-0f890494e52693975"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-1a"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  get_password_data                    = false
  hibernation                          = false
  host_id                              = null
  host_resource_group_arn              = null
  iam_instance_profile                 = "ec2_instance_profile"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = null
  monitoring                           = false
  placement_group                      = null
  placement_partition_number           = 0
  private_ip                           = "10.0.1.216"
  secondary_private_ips                = []
  security_groups                      = []
  source_dest_check                    = true
  subnet_id                            = "subnet-0cd2febdefac94fc9"
  tags = {
    Name                  = "dev-efimerio-caoba"
    OTU                   = "cmartinez-tf"
    TerminationProtection = "false"
  }
  tags_all = {
    Name                  = "dev-efimerio-caoba"
    OTU                   = "cmartinez-tf"
    TerminationProtection = "false"
  }
  tenancy                     = "default"
  user_data                   = "8d8fba688687f84206998cc227ed814db07e041a"
  user_data_base64            = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["sg-07da763152d0417c9"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    amd_sev_snp      = null
    core_count       = 1
    threads_per_core = 1
  }
  credit_specification {
    cpu_credits = "standard"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 100
    kms_key_id            = null
    tags                  = {}
    throughput            = 0
    volume_size           = 10
    volume_type           = "gp2"
  }
}
