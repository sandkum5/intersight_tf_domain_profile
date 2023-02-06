resource "intersight_fabric_switch_cluster_profile" "dp_1" {
  name        = "tf_dp_1"
  description = "demo fabric switch cluster profile"
  type        = "instance"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org.results[0].moid
  }
}

resource "intersight_fabric_switch_profile" "dp1_sp_a" {
  name        = "tf_dp_1-A"
  description = "demo fabric switch profile"
  type        = "instance"
  action      = "No-op"
  switch_cluster_profile {
    moid        = intersight_fabric_switch_cluster_profile.dp_1.moid
    object_type = "fabric.SwitchClusterProfile"
  }
}

resource "intersight_fabric_switch_profile" "dp1_sp_b" {
  name        = "tf_dp_1-B"
  description = "demo fabric switch profile"
  type        = "instance"
  action      = "No-op"
  switch_cluster_profile {
    moid        = intersight_fabric_switch_cluster_profile.dp_1.moid
    object_type = "fabric.SwitchClusterProfile"
  }
}