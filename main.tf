resource "proxmox_lxc" "Angular" {
  target_node  = "jayesh"
  hostname     = "Angular"
  ostemplate   = "local:vztmpl/ubuntu-22.10-standard_22.10-1_amd64.tar.zst"
  password     = "password"
  unprivileged = true

  rootfs {
    storage = "local-lvm"
    size    = "20G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "ip=192.168.29.81/24,gw=192.168.29.1"
    ip6    = "auto"
  }


  ssh_public_keys = <<-EOT
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDT+ghI2UBlTab9xTeJOI9tMGEeTgukG7sCiofZIJrhliU/gJLbEQNNki7ha2JoFvVgZM8sBcFP6R0YMXZ4GL/c8riERK9/AdwKrlynSLWirUi2/yA1ucAr5c0Lx9KbWtNosa3sNV4m9kfboyF8a5t89aECmbCsW+uwCqDZgpSyr/42q8KcTJaZjRh0MZPsJW+aoUb4zJ9xEmqyP1/Z6qP2KEN3M4+lsmg4E///tL7ATRUkmSUoB3Kg16XRb7YW4YcuSbtZLgNriFj+jAgXQLj0zeKRjQdJuqzpxumsquPhBioheeyyT6X3PdEiewfQ+NkH+FbYlBYSiJCA6Qrssc26weszIFo5I/+5tUStiVBrzVCpczUlR90QB1gDsZPHDGgj3W5xJYRKEWFwjKaUhDMh2pWUOHu2uaeSdODQ1dhp8sncv2BzBOZtKmqXwrOOhUk/vHUcd6Ndpci20PBDpO2E2TPslkyaR1Mi5hoKhc5gWDSzK5HQC0mRliuJ6IiWtqc= jr@controller-vm
  EOT
}

resource "proxmox_lxc" "MySQL" {
  target_node  = "jayesh"
  hostname     = "MySQL"
  ostemplate   = "local:vztmpl/ubuntu-22.10-standard_22.10-1_amd64.tar.zst"
  password     = "password"
  unprivileged = true

  rootfs {
    storage = "local-lvm"
    size    = "20G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "ip=192.168.29.83/24,gw=192.168.29.1"
    ip6    = "auto"
  }


  ssh_public_keys = <<-EOT
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDT+ghI2UBlTab9xTeJOI9tMGEeTgukG7sCiofZIJrhliU/gJLbEQNNki7ha2JoFvVgZM8sBcFP6R0YMXZ4GL/c8riERK9/AdwKrlynSLWirUi2/yA1ucAr5c0Lx9KbWtNosa3sNV4m9kfboyF8a5t89aECmbCsW+uwCqDZgpSyr/42q8KcTJaZjRh0MZPsJW+aoUb4zJ9xEmqyP1/Z6qP2KEN3M4+lsmg4E///tL7ATRUkmSUoB3Kg16XRb7YW4YcuSbtZLgNriFj+jAgXQLj0zeKRjQdJuqzpxumsquPhBioheeyyT6X3PdEiewfQ+NkH+FbYlBYSiJCA6Qrssc26weszIFo5I/+5tUStiVBrzVCpczUlR90QB1gDsZPHDGgj3W5xJYRKEWFwjKaUhDMh2pWUOHu2uaeSdODQ1dhp8sncv2BzBOZtKmqXwrOOhUk/vHUcd6Ndpci20PBDpO2E2TPslkyaR1Mi5hoKhc5gWDSzK5HQC0mRliuJ6IiWtqc= jr@controller-vm
  EOT
}

resource "proxmox_lxc" "Wordpress" {
  target_node  = "jayesh"
  hostname     = "Wordpress"
  ostemplate   = "local:vztmpl/ubuntu-22.10-standard_22.10-1_amd64.tar.zst"
  password     = "password"
  unprivileged = true

  rootfs {
    storage = "local-lvm"
    size    = "20G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "ip=192.168.29.82/24,gw=192.168.29.1"
    ip6    = "auto"
  }


  ssh_public_keys = <<-EOT
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDT+ghI2UBlTab9xTeJOI9tMGEeTgukG7sCiofZIJrhliU/gJLbEQNNki7ha2JoFvVgZM8sBcFP6R0YMXZ4GL/c8riERK9/AdwKrlynSLWirUi2/yA1ucAr5c0Lx9KbWtNosa3sNV4m9kfboyF8a5t89aECmbCsW+uwCqDZgpSyr/42q8KcTJaZjRh0MZPsJW+aoUb4zJ9xEmqyP1/Z6qP2KEN3M4+lsmg4E///tL7ATRUkmSUoB3Kg16XRb7YW4YcuSbtZLgNriFj+jAgXQLj0zeKRjQdJuqzpxumsquPhBioheeyyT6X3PdEiewfQ+NkH+FbYlBYSiJCA6Qrssc26weszIFo5I/+5tUStiVBrzVCpczUlR90QB1gDsZPHDGgj3W5xJYRKEWFwjKaUhDMh2pWUOHu2uaeSdODQ1dhp8sncv2BzBOZtKmqXwrOOhUk/vHUcd6Ndpci20PBDpO2E2TPslkyaR1Mi5hoKhc5gWDSzK5HQC0mRliuJ6IiWtqc= jr@controller-vm
  EOT
}