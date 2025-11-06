output "network_name" {
  value = docker_network.websandbox_net.name
}

output "db_volume" {
  value = docker_volume.websandbox_pgdata.name
}
