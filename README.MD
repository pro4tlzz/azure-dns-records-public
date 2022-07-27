Manage Azure A dns records with Terraform

Azure api for dns records isn't great and its harder to do certain things, Route53 and Cloudflare rule them all

You need to add a terraform.tfvars file to the dns folder, this should look like

# put dns records and resource group here
groups = {
  "resource_groups" = {
    "resource_groups" = {
      dns : {
        name = "dns"
        location = "UK South"
      }
    }
  }
}

records = {
  "domain.com" = {
    "A" = {
      "@" = ["1.1.1.1"]
}
}
}