variable "name" {
  description = "Prefix used to name various infrastructure components. Alphanumeric characters only."
  default     = "nomad"
}

variable "location" {
  description = "The Azure region to deploy to."
}

variable "image_name" {
  description = "The Azure image to use for the server and client machines. Output from the Packer build process. This is the image NAME not the ID."
}

variable "subscription_id" {
  description = "The Azure subscription ID to use."
}

variable "resource_group_name" {
  description = "The Azure resource group name to use."
}

variable "storage_account" {
  description = "The storage account name. Used for boot diagnostics."
}

variable "client_id" {
  description = "The Azure client ID to use."
}

variable "client_secret" {
  description = "The Azure client secret to use."
}

variable "tenant_id" {
  description = "The Azure tenant ID to use."
}

variable "retry_join" {
  description = "Used by Consul to automatically form a cluster."
  type        = string
}

variable "allowlist_ip" {
  description = "IP to allow access for the security groups (set 0.0.0.0/0 for world)"
  default     = "0.0.0.0/0"
}

variable "server_instance_type" {
  description = "The Azure VM instance type to use for servers."
  default     = "Standard_B1s"
}

variable "client_instance_type" {
  description = "The Azure VM type to use for clients."
  default     = "Standard_B1s"
}

variable "server_count" {
  description = "The number of servers to provision."
  default     = "3"
}

variable "client_count" {
  description = "The number of clients to provision."
  default     = "3"
}

variable "root_block_device_size" {
  description = "The volume size of the root block device."
  default     = 16
}

variable "nomad_consul_token_id" {
  description = "Accessor ID for the Consul ACL token used by Nomad servers and clients. Must be a UUID."
}

variable "nomad_consul_token_secret" {
  description = "Secret ID for the Consul ACL token used by Nomad servers and clients. Must be a UUID."
}

variable "nomad_binary" {
  description = "URL of a zip file containing a nomad executable to replace the Nomad binaries in the AMI with. Example: https://releases.hashicorp.com/nomad/0.10.0/nomad_0.10.0_linux_amd64.zip"
  default     = ""
}