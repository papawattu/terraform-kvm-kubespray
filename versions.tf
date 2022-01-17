terraform {
  required_version = ">= 1.0.0"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "~> 0.6.12"
      configuration_aliases = [ libvirt.host1,libvirt.host2 ]
    }
  }
}
