provider "google" {
  project     = "nth-bounty-417116"

  region      = "us-east1"

}

resource "google_compute_network" "vpc1" {
  name                    = "my-first-vpc"
  auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "my-custom-subnet1" {
  name          = "my-custom-subnet-1"
  ip_cidr_range = "10.255.196.0/24"
  network       = google_compute_network.vpc1.name
  region        = "us-east1"
}



#### test file to push

resource "google_compute_disk" "ram" {
  name = "ram_reddy_disk"
  type = "pd-ssd"
  zone = "us-east1-c"
}
