#output "app_external_ip" {
#  value = "${google_compute_instance.app.network_interface.0.access_config.0.nat_ip}"
#}
#output "firewall_port" {
#	value = "${google_compute_instance.app.allow.*.ports.0}"
#}