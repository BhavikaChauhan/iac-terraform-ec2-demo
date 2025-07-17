# ☁️ Terraform EC2 Demo — IaC Project

A simple yet production-relevant example of using **Terraform** to provision an **NGINX web server on AWS EC2**.

## 🚀 What This Project Does

- Provisions an EC2 instance with a specific AMI
- Uses `user_data` to install and launch NGINX automatically
- Outputs public IP so you can test it live
- Organized using `variables.tf` and `outputs.tf` for clarity

---

## 📌 Architecture Diagram

```mermaid
graph TD;
    CLI[Terraform CLI] --> AWS[AWS Provider];
    AWS --> EC2[EC2 Instance];
    EC2 --> NGINX[NGINX Installed];
