locals {
  name = "${var.env}-${var.team}"

  tags_all = {
    Team = var.team
    Env = var.env
  }

  asg_tags = [
    {
      key                 = "Project"
      value               = var.project
      propagate_at_launch = true
    },
  ]

}