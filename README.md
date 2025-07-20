# 🏗️ Infrastructure as Code (IaC) — Terraform EC2 Demo

**By [Bhavika Chauhan](https://www.linkedin.com/in/bhavika-chauhan-276b41332) • [Get Free IaC Checklist PDF](https://bhavika-engineered.kit.com/85eedbad31)**

This project demonstrates how to provision an EC2 instance on AWS using **Terraform** — showcasing real-world Infrastructure as Code workflows.

> ✅ Designed for beginners. No complex tooling. No prior AWS experience required.

---

## 📌 What You'll Learn

- How to write basic Terraform configuration files
- Use input variables, outputs, and user data
- Provision an EC2 instance with a custom security group
- Deploy a simple NGINX web server
- Clean up resources safely

---

## 📁 File Structure

```bash
iac-terraform-ec2-demo/
├── provider.tf      # AWS provider setup
├── variables.tf     # Input variables for region, AMI, etc.
├── security.tf      # Security group to allow SSH & HTTP
├── main.tf          # EC2 instance configuration
├── outputs.tf       # Output instance ID & public IP
````
## 📌 Architecture Diagram

```mermaid
graph TD;
    CLI[Terraform CLI] --> AWS[AWS Provider];
    AWS --> EC2[EC2 Instance];
    EC2 --> NGINX[NGINX Installed];

---

## 🚀 Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/BhavikaChauhan/iac-terraform-ec2-demo.git
cd iac-terraform-ec2-demo
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Review the Plan

```bash
terraform plan
```

### 4. Apply & Deploy

```bash
terraform apply
# Confirm with "yes" when prompted
```

### 5. View Your App

```bash
terraform output public_ip
```

Open the output IP in your browser to see the NGINX welcome page.

---

## 🔄 Clean Up

```bash
terraform destroy
# Confirm with "yes"
```

---

## 📷 Demo Output

<img src="https://raw.githubusercontent.com/BhavikaChauhan/iac-terraform-ec2-demo/main/demo-output.png" alt="Terraform EC2 Output" width="600"/>

---

## 📄 Want More?

🎁 **[Download the free IaC Checklist PDF](https://bhavika-engineered.kit.com/85eedbad31)**
📖 **[Read the Full Blog Post on Medium →](https://medium.com/@bhavika.engineered/a4eee3151255)**

---

## 🔒 Disclaimer

Make sure you're using **your own AWS credentials** and **never commit sensitive data** to version control. Always follow **least privilege principles** and secure state files with remote backends (e.g., S3 + DynamoDB).

---

## 🙌 Connect

Made with 💻 by **Bhavika Chauhan**
🌐 [bhavika-engineered.kit.com](https://bhavika-engineered.kit.com/) | 📧 [bhavika.engineered@gmail.com](mailto:bhavika.engineered@gmail.com)
