variable "project_id" {
  description = "The project ID"
  type        = string
  default     = "go-gke-hello-app"
}

variable "env_name" {
  description = "The environment name"
  type        = string
  default     = "development"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
  default     = "hello-gke-cluster"
}

variable "region" {
  description = "The region in which the GKE cluster will be created"
  type        = string
  default     = "asia-southeast1"
}

variable "zone" {
  description = "The zone in which the GKE cluster will be created"
  type        = string
  default     = "asia-southeast1-a"
}

variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network"
}

variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "gke-subnet"
}

variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
}

variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services"
}
