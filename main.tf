module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.8.0"
  gcp_project = "kuberntessetup"
  cluster_name = "jxcluster"
}

terraform {

  backend "gcs" {

   bucket = "ps-jx-terraform-state"
   prefix = "terraform/state"

}

}

