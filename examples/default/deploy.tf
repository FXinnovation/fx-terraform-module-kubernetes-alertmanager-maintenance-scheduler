provider "random" {
  version = "~> 2"
}

resource "random_string" "this" {
  upper   = false
  number  = false
  special = false
  length  = 8
}

provider "kubernetes" {
  version          = "1.10.0"
  load_config_file = true
}

resource "kubernetes_namespace" "this" {
  metadata {
    name = random_string.this.result
  }
}

module "alertmanager-maintenance-scheduler" {
  source = "../.."

  namespace        = kubernetes_namespace.this.metadata.0.name
  alertmanager_url = "example"
  configuration    = file("${path.root}/templates/config.yml")
}
