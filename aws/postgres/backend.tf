terraform {
  cloud {
    organization = "jniranjanreddy"

    workspaces {
      name = "dev"
    }
  }
}
