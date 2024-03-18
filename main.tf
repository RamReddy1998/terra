provider "google" {
  project     = "nth-bounty-417116"
  region      = "us-east1"

}

resource "google_compute_network" "vpc2" {
  name                    = "my-first-vpc"
  auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "my-custom-subnet2" {
  name          = "my-custom-subnet-2"
  ip_cidr_range = "10.255.197.0/24"
  network       = google_compute_network.vpc2.name
  region        = "us-east1"
}



#### test file to push
