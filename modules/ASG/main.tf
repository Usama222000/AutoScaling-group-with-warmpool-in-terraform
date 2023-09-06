

resource "aws_autoscaling_group" "ASG" {
    name                      = "${var.ASG_vars.identifier}-${terraform.workspace}-ASG"
    vpc_zone_identifier       = var.ASG_vars.subnets_ids

    min_size                  = var.ASG_vars.min_size
    max_size                  = var.ASG_vars.max_size
    desired_capacity          = var.ASG_vars.desired_capacity
    default_cooldown          = var.ASG_vars.default_cooldown


    launch_template {
    id      = var.ASG_vars.launch_template.id
    version = var.ASG_vars.launch_template.version
  }

    warm_pool {
      pool_state                  = var.ASG_vars.warm_pool.pool_state
      min_size                    = var.ASG_vars.warm_pool.min_size
      # max_group_prepared_capacity = var.w/p_max
    }
  
    tag {
      key                 = "Name"
      value               = "${var.ASG_vars.identifier}-ASG"
      propagate_at_launch = true
    }
}
