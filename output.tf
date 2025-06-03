output "network_IPs" {
  description = "External IPs of the instances"
  value = {
    for name, instance in google_compute_instance.vm_instance :
    name => instance.network_interface[0].access_config[0].nat_ip
  }
}

output "instance_links" {
  description = "Self-links of the instances"
  value = {
    for name, instance in google_compute_instance.vm_instance :
    name => instance.self_link
  }
}
