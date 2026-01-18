data "tfe_outputs" "network" {
  organization = "rbts"
  workspace = "network-team"
}

output "network_public_ips" {
  value = data.tfe_outputs.network.values.public_ips
  description = "List of public IPs fetched from the Network workspace"
  sensitive = true
}