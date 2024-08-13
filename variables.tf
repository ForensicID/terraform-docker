variable "pm_user" {
  description = "The username for the proxmox user"
  type        = string
  sensitive   = false
  default     = "root@pam"

}
variable "pm_password" {
  description = "The password for the proxmox user"
  type        = string
  sensitive   = true
}

variable "pm_tls_insecure" {
  description = "Set to true to ignore certificate errors"
  type        = bool
  default     = false
}

variable "pm_host" {
  description = "The hostname or IP of the proxmox server"
  type        = string
}

variable "pm_node_name" {
  description = "name of the proxmox node to create the VMs on"
  type        = string
  default     = "pve"
}

variable "pvt_key" {}
variable "pub_key" {
  description = "Public SSH key"
  type        = string
}

variable "server1_name" {
  description = "name of the vm node to create the VMs on"
  type        = string
  default     = "Server1"
}

variable "server2_name" {
  description = "name of the vm node to create the VMs on"
  type        = string
  default     = "Server2"
}

variable "server3_name" {
  description = "name of the vm node to create the VMs on"
  type        = string
  default     = "Server3"
}

variable "server1_cpu" {
  default = 2
}

variable "server2_cpu" {
  default = 2
}

variable "server3_cpu" {
  default = 2
}

variable "server1_mem" {
  default = "4096"
}

variable "server2_mem" {
  default = "4096"
}

variable "server3_mem" {
  default = "4096"
}

variable "server1_disk" {
  default = "32"
}

variable "server2_disk" {
  default = "32"
}

variable "server3_disk" {
  default = "32"
}

variable "server1_ip" {
  description = "List of ip addresses for master nodes"
  type        = string
}

variable "server2_ip" {
  description = "List of ip addresses for master nodes"
  type        = string
}

variable "server3_ip" {
  description = "List of ip addresses for master nodes"
  type        = string
}

variable "tamplate_vm_name" {}

variable "networkrange" {
  default = 24
}

variable "gateway" {
  type = string
  default = "192.168.1.1"
}