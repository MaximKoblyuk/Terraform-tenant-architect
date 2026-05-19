locals {
  name_prefix = join(local.naming_separator, [var.environment, var.region_short, var.workload])
}
