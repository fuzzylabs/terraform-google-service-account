# terraform-google-service-account

A simple module that creates a service account and optionally assigns a list of roles to it.

Example Usage:
```
module "my_service_account" {
  source   = "github.com/fuzzylabs/terraform-google-service-account?ref=master"
  location = "europe-west1"
  project  = "my_project"
  name     = "my-service-account"
  roles = [
    "roles/viewer",
    "roles/storage.objectAdmin"
  ]
}
```

TODO:

* Write some tests.
