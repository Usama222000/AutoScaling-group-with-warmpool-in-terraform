
variable ASG_vars {
  type = object({
    identifier = string
    min_size = number
    max_size = number
    desired_capacity = number
    default_cooldown = number
    subnets_ids = list(string)
    
    warm_pool = object({
      pool_state = string
      min_size   = number
    })

    launch_template = object({
      id      = string
      version = string
    })
    
  })
}
