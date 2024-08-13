output "Server-NodeJS" {
  value = ["${proxmox_vm_qemu.proxmox_vm_server1.*.default_ipv4_address}"]
}

output "Server-MySQL" {
  value = ["${proxmox_vm_qemu.proxmox_vm_server2.*.default_ipv4_address}"]
}

output "Server-MariaDB" {
  value = ["${proxmox_vm_qemu.proxmox_vm_server3.*.default_ipv4_address}"]
}