variable "environment" {
  type        = string
  description = "Environment name (dev/test/staging/prod)"
}

variable "owner" {
  type        = string
  description = "Owning team or service owner"
}

variable "cost_center" {
  type        = string
  description = "Cost center identifier"
}

variable "application" {
  type        = string
  description = "Application or platform name"
}

variable "criticality" {
  type        = string
  description = "Business criticality"
}

variable "region_short" {
  type        = string
  description = "Short Azure region code (for example: we)"
}

variable "workload" {
  type        = string
  description = "Workload name for naming conventions"
}
