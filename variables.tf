variable "deployment_name" {
  description = "Name of the deployment that will be create."
  default     = "alertmanager-maintenance-scheduler"
}

variable "namespace" {
  description = "Namespace in which the module will be deployed."
  default     = "default"
}

variable "annotations" {
  description = "Additionnal annotations that will be merged on all resources."
  default     = {}
}

variable "deployment_annotations" {
  description = "Additionnal annotations that will be merged on the deployment."
  default     = {}
}

variable "labels" {
  description = "Additionnal labels that will be merged on all resources."
  default     = {}
}

variable "deployment_template_annotations" {
  description = "Additionnal annotations that will be merged on the deployment template."
  default     = {}
}

variable "deployment_labels" {
  description = "Additionnal labels that will be merged on the deployment."
  default     = {}
}

variable "replicas" {
  description = "Number of replicas to deploy."
  default     = 3
}

variable "image_pull_policy" {
  description = "Image pull policy on the main container."
  default     = "IfNotPresent"
}

variable "service_name" {
  description = "Name of the service that will be create"
  default     = "alertmanager-maintenance-scheduler"
}

variable "service_annotations" {
  description = "Additionnal annotations that will be merged for the service."
  default     = {}
}

variable "service_labels" {
  description = "Additionnal labels that will be merged for the service."
  default     = {}
}

variable "port" {
  description = "Port to be used for the service."
  default     = 80
}

variable "config_map_name" {
  description = "Name of the config map that will be created."
  default     = "alertmanager-maintenance-scheduler"
}

variable "config_map_annotations" {
  description = "Additionnal annotations that will be merged for the config map."
  default     = {}
}

variable "config_map_labels" {
  description = "Additionnal labels that will be merged for the config map."
  default     = {}
}

variable "secret_name" {
  description = "Name of the secret that will be created."
  default     = "alertmanager-maintenance-scheduler"
}

variable "secret_annotations" {
  description = "Additionnal annotations that will be merged for the secret."
  default     = {}
}

variable "secret_labels" {
  description = "Additionnal labels that will be merged for the secret."
  default     = {}
}

variable "enabled" {
  description = "Whether or not to enable this module."
  default     = true
}

variable "alertmanager_url" {
  description = "URL of the Alertmanager instance to connect to."
  type        = string
}

variable "configuration" {
  description = "Configuration to use for alertmanager-maintenance-scheduler (must be a map)."
  default     = "{}"
}
