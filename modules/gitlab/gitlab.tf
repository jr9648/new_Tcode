resource "proxmox_lxc" "Gitlab" {
  target_node  = "jayesh"
  hostname     = "Gitlab"
  ostemplate   = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst" 
  password     = "password"
  cores        = 2
  memory       = 5120
  swap         = 1024
  unprivileged = true
  start        = true

  rootfs {
    storage = "local-lvm"
    size    = "20G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "192.168.29.82/24"
    gw     = "192.168.29.1"
    ip6    = "auto"
  }


  ssh_public_keys = <<-EOT
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzK5sWaq9oMvcvCUwzPo2mC3u5JDzG3WA0tGIVK1YAFw9dDJtAMOOG1zsl7PHoHRwTkrHrzYpQjHtCCG4Vd/9DxgrEqqX7oTSOv1AfCOrKRwvZwwPvIsIAWy4eB7C7kSIZCHwHjpc0aHqopG5tkWrwIz2kwEiECT4HwJhoPv6k474OdQhTlKkhMCTOsIHN4GNhBmfS9albv4s3s+n0SIl4kCZag3C6dbcWY2p88qXiGlgRN6J3edsGCx0hMCIyzMu7SDOGsVrmOg3A4lsS6imO32rSw6VYDDkTDBKe2QEjxC4oKHOqgfqsLc4Tr2iJNAy1/nIw/SRig6cks8Ak5AbAWUNj+FeyhfQaymEKJiqiHp6sw0+alKzFmqIl9eIW9mF0Ho8WAVGkS3wKmQocFoknnOXrNJZ430Piy0/TNGoPGlbxK7Pcm48PGp/9/ZJsczKtnfEk8TTbsFD1f+Z6E0PNe44aQbzaIv7AjUHfEV+zXAUEf1csBT/efNiKvp+bKc0= root@controller
  EOT
}
