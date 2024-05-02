provider "prismacloud" {
    json_config_file = ".prismacloud_auth.json"
}

terraform {
  required_providers {
    prismacloud = {
      source = "PaloAltoNetworks/prismacloud"
      version = "1.5.4"
    }
  }
}

resource "prismacloud_policy" "iac_build_policy_001" {
  name        = "IaC Policy #1 created with terraform"
  policy_type = "config"
  cloud_type  = "azure"
  severity    = "medium"
  labels      = ["custom_policy_tf"]
  description = "..."
  enabled     = true
  rule {
    name      = "IaC Policy #1 created with terraform"
    rule_type = "Config"
    parameters = {
      savedSearch = false
      withIac     = true
    }
    children {
      type           = "build"
      recommendation = "fix it"
      metadata = {
        "code" : file("policies/iac/iac_001.yaml")
      }
    }
  }
}


resource "prismacloud_policy" "secret_build_policy_001" {
  name        = "Secret Policy #1 created with terraform"
  policy_type = "config"
  severity    = "medium"
  labels      = ["custom_policy_tf"]
  description = "..."
  enabled     = true
  rule {
    name      = "Secret Policy #1 created with terraform"
    rule_type = "Config"
    parameters = {
      savedSearch = false
      withIac     = true
    }
    children {
      type           = "build"
      recommendation = "fix it"
      metadata = {
        "code" : file("policies/secret/secret_001.yaml")
      }
    }
  }
}

resource "prismacloud_policy" "kubernetes_build_policy_001" {
  name        = "Kubernetes Policy #1 created with terraform"
  policy_type = "config"
  severity    = "medium"
  labels      = ["custom_policy_tf"]
  description = "..."
  enabled     = true
  rule {
    name      = "Kubernetes Policy #1 created with terraform"
    rule_type = "Config"
    parameters = {
      savedSearch = false
      withIac     = true
    }
    children {
      type           = "build"
      recommendation = "fix it"
      metadata = {
        "code" : file("policies/k8s/k8s_001.yaml")
      }
    }
  }
}

resource "prismacloud_policy" "sast_build_policy_001" {
  name        = "SAST Policy #1 created with terraform"
  policy_type = "config"
  severity    = "medium"
  labels      = ["custom_policy_tf"]
  description = "..."
  enabled     = true
  rule {
    name      = "SAST Policy #1 created with terraform"
    rule_type = "Config"
    parameters = {
      savedSearch = false
      withIac     = true
    }
    children {
      type           = "build"
      recommendation = "fix it"
      metadata = {
        "code" : file("policies/sast/sast_001.yaml")
      }
    }
  }
}

