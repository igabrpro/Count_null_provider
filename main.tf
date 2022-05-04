terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {}



resource "null_resource" "igabr" {
  count = 3
  triggers = {
    build_number = "Object ${count.index}"
  }

  provisioner "local-exec" {
    command = "uname -a"
  }
}
