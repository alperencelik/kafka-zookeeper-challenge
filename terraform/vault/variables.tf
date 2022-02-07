variable "aws_region" {
    type = string
    description = "The AWS region you want your region-specific resources provisioned in."
    default = "eu-north-1"
}

variable "azs" {
    type = list(string)
    description = "A valid list of Availability Zones (AZs) to deploy your regional resources into."
    default = ["eu-north-1a", "eu-north-1b", "eu-north-1c"]
}

variable "resource_name_prefix" {
    type = string
    description = "all of your resources will have their identifiers prefixed with this string, so you can tell them apart."
    default = "vault-cluster"
}

# variable "private_subnet_tags" {
#    type = map(string)
#    description = "Explicitly passing in the subnet tags that we'll deploy Vault into, so that both the VPC prereq module and the vault-ent module have the same data and don't depend on each other."
#    default = { "Vault": "deploy" }
#}
