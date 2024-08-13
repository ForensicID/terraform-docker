resource "proxmox_vm_qemu" "proxmox_vm_server1" {
    count       = "1"
    name        = var.server1_name
    target_node = var.pm_node_name
    clone       = var.tamplate_vm_name
    os_type     = "cloud-init"
    agent       = "1"
    memory      = var.server1_mem
    sockets     = "1"
    cores       = var.server1_cpu
    full_clone  = "true"
    scsihw      = "virtio-scsi-pci"

    disks {
        ide {
            ide3 {
                cloudinit {
                    storage = "local-lvm"
                }
            }
        }
        scsi {
            scsi0 {
                disk {
                    size            = var.server1_disk
                    storage         = "local-lvm"
                    iothread        = false
                    discard         = false
                }
            }
        }
    }

    network {
        model = "virtio"
        bridge = "vmbr0"
    }

    ipconfig0 = "ip=${var.server1_ip}/${var.networkrange},gw=${var.gateway}"

    lifecycle {
        ignore_changes = [
        ciuser,
        sshkeys,
        disks,
        network
        ]
    }

    sshkeys = <<EOF
    ${var.pub_key}
    EOF
}

resource "proxmox_vm_qemu" "proxmox_vm_server2" {
    count       = "1"
    name        = var.server2_name
    target_node = var.pm_node_name
    clone       = var.tamplate_vm_name
    os_type     = "cloud-init"
    agent       = "1"
    memory      = var.server2_mem
    sockets     = "1"
    cores       = var.server2_cpu
    full_clone  = "true"
    scsihw      = "virtio-scsi-pci"

    disks {
        ide {
            ide3 {
                cloudinit {
                    storage = "local-lvm"
                }
            }
        }
        scsi {
            scsi0 {
                disk {
                    size            = var.server2_disk
                    storage         = "local-lvm"
                    iothread        = false
                    discard         = false
                }
            }
        }
    }

    network {
        model = "virtio"
        bridge = "vmbr0"
    }

    ipconfig0 = "ip=${var.server2_ip}/${var.networkrange},gw=${var.gateway}"

    lifecycle {
        ignore_changes = [
        ciuser,
        sshkeys,
        disks,
        network
        ]
    }

    sshkeys = <<EOF
    ${var.pub_key}
    EOF
}

resource "proxmox_vm_qemu" "proxmox_vm_server3" {
    count       = "1"
    name        = var.server3_name
    target_node = var.pm_node_name
    clone       = var.tamplate_vm_name
    os_type     = "cloud-init"
    agent       = "1"
    memory      = var.server3_mem
    sockets     = "1"
    cores       = var.server3_cpu
    full_clone  = "true"
    scsihw      = "virtio-scsi-pci"

    disks {
        ide {
            ide3 {
                cloudinit {
                    storage = "local-lvm"
                }
            }
        }
        scsi {
            scsi0 {
                disk {
                    size            = var.server3_disk
                    storage         = "local-lvm"
                    iothread        = false
                    discard         = false
                }
            }
        }
    }

    network {
        model = "virtio"
        bridge = "vmbr0"
    }

    ipconfig0 = "ip=${var.server3_ip}/${var.networkrange},gw=${var.gateway}"

    lifecycle {
        ignore_changes = [
        ciuser,
        sshkeys,
        disks,
        network
        ]
    }

    sshkeys = <<EOF
    ${var.pub_key}
    EOF
}

provider "null" {
    # Provider kosong untuk menjalankan perintah lokal
}

resource "null_resource" "run_local_script" {
    depends_on = [proxmox_vm_qemu.proxmox_vm_server1, proxmox_vm_qemu.proxmox_vm_server2, proxmox_vm_qemu.proxmox_vm_server3]

    provisioner "local-exec" {
    command = "bash package/install.sh"
    }
}