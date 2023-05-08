resource "proxmox_lxc" "Gitlab" {
  target_node  = "ajaya-alpha"
  hostname     = "Gitlab"
  ostemplate   = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst" 
  password     = "password"
  cores        = 2
  memory       = 5120
  swap         = 1024
  unprivileged = true
  start        = true

  rootfs {
    storage = "local-zfs"
    size    = "20G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr1"
    ip     = "192.168.1.82/24"
    gw     = "192.168.1.1"
    ip6    = "auto"
  }


  ssh_public_keys = <<-EOT
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzK5sWaq9oMvcvCUwzPo2mC3u5JDzG3WA0tGIVK1YAFw9dDJtAMOOG1zsl7PHoHRwTkrHrzYpQjHtCCG4Vd/9DxgrEqqX7oTSOv1AfCOrKRwvZwwPvIsIAWy4eB7C7kSIZCHwHjpc0aHqopG5tkWrwIz2kwEiECT4HwJhoPv6k474OdQhTlKkhMCTOsIHN4GNhBmfS9albv4s3s+n0SIl4kCZag3C6dbcWY2p88qXiGlgRN6J3edsGCx0hMCIyzMu7SDOGsVrmOg3A4lsS6imO32rSw6VYDDkTDBKe2QEjxC4oKHOqgfqsLc4Tr2iJNAy1/nIw/SRig6cks8Ak5AbAWUNj+FeyhfQaymEKJiqiHp6sw0+alKzFmqIl9eIW9mF0Ho8WAVGkS3wKmQocFoknnOXrNJZ430Piy0/TNGoPGlbxK7Pcm48PGp/9/ZJsczKtnfEk8TTbsFD1f+Z6E0PNe44aQbzaIv7AjUHfEV+zXAUEf1csBT/efNiKvp+bKc0= root@controller
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJWZQ6qXMHYsC3l3CLWF++yAOGrNYWSKUvG3bieIiDKfVMy52xXD8i6YRe40xXHkCmdKX0UyodCbtdrtbTsS9W3Tzcjq3rdeLckBwo2uPSCLOxvBdgTz+Li7Hm90sFLnX+WY/kTjW0vFDeVIQnEYeQBmeGaaTuA1zAA5cEHe3x4I3Jg6zlEnfKxcTtAVoQEw7fcAunWhObGhplnDSBn9ArqrrEdyG+XQtJ93MDfrhk5m3tSTDFyxlf/HVdOK3mQcZTzzrYTxIW0sNKa1lA8oPX2iZbEVXNFo4OfjuiE45rr5dDbezKyS4YHsAMYCViMYtKpWbVpBWkxJo8cwTvXQur barelab@ashoka-alpha
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDgR+DbPMll+ax1L1oklwfZnNqabHbNlVuCQGZaoDftW9OzgGqMkpq9LxjL+sIg+lA5oSAgx2+YzJ1PDw9PSHzipkVSJe27znC2aPakQyHulab1OlAqRUjJRnH1DdLNNmary6AoLBhbN4nYWKD7arhDivI9NcXUceHKENmo30ueKXpAUpYAOabf7oxDP9+w6Gz0BASKpW92ZuwIZGUmschfp75PTg9Phtoq/widZcE3AmYQ8bXPfrTAvVJc2VaYijp908atAfz6cb4vqpPV+0iLR7PHDJBvDuOmiaMrg+A7S/DCovn6D4TPAENejPXq1HRCaF3f+PtTwJmLFos2B1iZlkR1yofyT26dp/nLOMMDtHM/NWFjH0ui7ihmrQf17Khr20++8PLqoEqmclrUDj1RdoOFsrDJCSt2mgFhxY/FjRc1G3O69Ds9G3UxKIaYbjnsPctf3uc+LKl1hFUZKe9IKWKq/wSEJ5FLSTGWWblsS7LQk5d1WjG/xItGFa3L7Dc= root@AutController
  EOT
}
