# HashiConf Sentinel Policies Demo

This repo holds Sentinel policies used in conjunction with Terraform code to demonstrate **Policy as Code** in HCP Terraform.

---

##  Repo Structure
```plaintext
hashiconf-sentinel-policies/
├─ sentinel.hcl # Policy set definitions (policy sources + enforcement levels)
```
##  What These Policies Cover

- **EBS volumes must be encrypted**  
- **Security Groups must not allow SSH (port 22) from 0.0.0.0/0**  
- **Block public access to S3 at account level**  
- **Block public access to S3 at bucket level**  
- **Require MFA delete on S3 buckets**

---

##  How to Use

1. In HCP Terraform, go to **Organization → Policy Sets → Create policy set**.
2. Select this repo and the branch that contains `sentinel.hcl`.
3. Scope the policy set to your demo Terraform workspace.
4. Run a Terraform plan in that workspace — you will see policy checks applying.

---
