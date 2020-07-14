resource "google_compute_target_pool" "default" {
  name    = "reddit-pool"
  project = "${var.project}"

  instances = [
    "${var.zone}/reddit-app-0",
    "${var.zone}/reddit-app-1",
  ]

  health_checks = [
    "${google_compute_http_health_check.default.name}",
  ]
}

resource "google_compute_http_health_check" "default" {
  name               = "test"
  port               = "9292"
  request_path       = "/"
  check_interval_sec = 1
  timeout_sec        = 1
}
resource "google_compute_forwarding_rule" "default" {
  name       = "reddit-lb-rule"
  target     = "${google_compute_target_pool.default.self_link}"
  port_range = "9292"
}