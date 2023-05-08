module "haproxy" {
  source = "./modules/haproxy"
}

module "angular" {
  source = "./modules/angular"
}

module "gitlab" {
  source = "./modules/gitlab"
}

module "jenkins" {
  source = "./modules/jenkins"
}

module "mysql" {
  source = "./modules/mysql"
}

module "wordpress" {
  source = "./modules/wordpress"
}

module "keycloak" {
  source = "./modules/keycloak"
}