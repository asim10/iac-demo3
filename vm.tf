resource google_compute_instance "vm_instance" {
# name         = "${var.instance_name}"
# zone         = "${var.instance_zone}"
# machine_type = "${var.instance_type}"
  for_each = { for idx, inst in var.instances : inst.name => inst }
  name         = each.value.name
  machine_type = each.value.type
  zone         = each.value.zone

boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      }
  }
 network_interface {
    network = "default"
    access_config {
      # Allocate a one-to-one NAT IP to the instance
    }
  }
}
