# This Sentinel policy set is based on the CIS AWS Foundations Benchmark v1.4.0
policy "ec2-ebs-encryption-enabled" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-Terraform/1.0.1/policy/ec2-ebs-encryption-enabled.sentinel?checksum=sha256:ad0d6f7f068396d0cadd55dbb665b0379d232f4122ab62e674f263b2eb762dba"
  enforcement_level = "hard-mandatory"
}

policy "s3-block-public-access-account-level" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-Terraform/1.0.1/policy/s3-block-public-access-account-level.sentinel?checksum=sha256:fe9b5590e1f1c80aea63ad14c278f65c2d9a090d50e42f808f7480df229e84b6"
  enforcement_level = "advisory"
}

policy "ec2-security-group-ingress-traffic-restriction-port-22" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-Terraform/1.0.1/policy/ec2-security-group-ingress-traffic-restriction-port-22.sentinel?checksum=sha256:dfe1e79a65e5fcd06c23a635a844b5a2046f05eb4d77f78620fa73197b54c08b"
  enforcement_level = "soft-mandatory"
}

policy "s3-block-public-access-bucket-level" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-Terraform/1.0.1/policy/s3-block-public-access-bucket-level.sentinel?checksum=sha256:38cb17fd70b9e87bbc3283cc720458965dca75fc6074c159d301d6f901443ae1"
  enforcement_level = "advisory"
}

policy "s3-require-mfa-delete" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-Terraform/1.0.1/policy/s3-require-mfa-delete.sentinel?checksum=sha256:cc113647a3e172423325a57b65d00a3b9e85cbe587b0fe650f862307690e2126"
  enforcement_level = "advisory"
}

module "report" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-Terraform/1.0.1/policy-module/report.sentinel?checksum=sha256:1f414f31c2d6f7e4c3f61b2bc7c25079ea9d5dd985d865c01ce9470152fa696d"
}

module "tfresources" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-Terraform/1.0.1/policy-module/tfresources.sentinel?checksum=sha256:5b91f0689dd6d68d17bed2612cd72127a6dcfcedee0e2bb69a617ded71ad0168"
}

module "tfplan-functions" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-Terraform/1.0.1/policy-module/tfplan-functions.sentinel?checksum=sha256:e7f04948ec53d7c01ff26829c1ef7079fb072ed5074483f94dd3d00ae5bb67b3"
}

module "tfconfig-functions" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-Terraform/1.0.1/policy-module/tfconfig-functions.sentinel?checksum=sha256:ee1c5baf3c2f6b032ea348ce38f0a93d54b6e5337bade1386fffb185e2599b5b"
}
