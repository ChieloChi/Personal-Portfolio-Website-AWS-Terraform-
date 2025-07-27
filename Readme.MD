# 🌐 Personal Portfolio Website (AWS + Terraform)

A static portfolio website built using **HTML**, **CSS**, and **JavaScript**, and deployed on **AWS** using **Terraform**. This project features a fully automated infrastructure with **S3**, **CloudFront**, **ACM**, and a custom domain via **Namecheap**. The website is globally distributed, secure (HTTPS), and version-controlled via **GitHub**.

---

## 📚 Table of Contents

- [ Features](#-features)  
- [ Tech Stack](#-tech-stack)  
- [ Folder Structure](#-folder-structure)  
- [📌 Project Setup Phases](#-project-setup-phases)  
  - [✅ Phase 1: Project Planning](#-phase-1-project-planning)  
  - [✅ Phase 2: Website Development](#-phase-2-website-development)  
  - [✅ Phase 3: Infrastructure Setup with Terraform](#-phase-3-infrastructure-setup-with-terraform)  
  - [✅ Phase 4: Domain & HTTPS Integration](#-phase-4-domain--https-integration)  
  - [✅ Phase 5: Deployment](#-phase-5-deployment)  
- [🌍 Live Website](#-live-website)  
- [📄 License](#-license)

---

##  Features

- Responsive design (mobile + desktop)
- Secure HTTPS via [AWS Certificate Manager (ACM)](https://aws.amazon.com/certificate-manager/)
- Fast global content delivery using [AWS CloudFront](https://aws.amazon.com/cloudfront/)
- Static hosting on [Amazon S3](https://aws.amazon.com/s3/)
- Automated infrastructure provisioning with [Terraform](https://www.terraform.io/)
- Custom domain integration via Namecheap
- DNS validation for SSL
- Source-controlled on [GitHub](https://github.com)

---

##  Tech Stack

| Tool / Service             | Purpose                                   |
|---------------------------|-------------------------------------------|
| HTML / CSS / JavaScript   | Front-end for the static website          |
| [AWS S3](https://aws.amazon.com/s3/) | Static file hosting             |
| [AWS CloudFront](https://aws.amazon.com/cloudfront/) | CDN & HTTPS distribution |
| [AWS ACM](https://aws.amazon.com/certificate-manager/) | SSL certificate (HTTPS) |
| [Terraform](https://www.terraform.io/) | Infrastructure as Code        |
| [GitHub](https://github.com)         | Version control & collaboration |

---

##  Folder Structure

```bash
.
├── index.html         # Home page
├── styles.css         # CSS styling
├── script.js          # JavaScript interactivity
├── main.tf            # Terraform configuration for AWS resources
├── variables.tf       # Terraform input variables
├── outputs.tf         # Terraform output values
└── README.md          # Project documentation


📌 Project Setup Phases
✅ Phase 1: Project Planning
Defined project scope: Create a modern, fast, and secure personal website

Selected AWS services: S3, CloudFront, ACM

Chose Terraform for repeatable infrastructure setup

Registered a custom domain via Namecheap

✅ Phase 2: Website Development
Built website using:

index.html

styles.css

script.js

Tested layout and responsiveness locally

✅ Phase 3: Infrastructure Setup with Terraform
Initialized Terraform and provisioned AWS resources:

S3 bucket for static hosting

CloudFront distribution with caching and HTTPS

SSL certificate from ACM (us-east-1)

Used terraform init, plan, and apply to deploy

✅ Phase 4: Domain & HTTPS Integration
Requested ACM certificate with DNS validation

Verified domain ownership via Namecheap DNS records

Configured CloudFront to use the custom domain and HTTPS

✅ Phase 5: Deployment
Uploaded files to S3 using AWS CLI

Set public read access via bucket policy

Confirmed:

Website loads globally via HTTPS

CDN performance is optimized

🌍 Live Website
Visit Website www.ssstech.site
Deployed and served securely with CloudFront & S3 over HTTPS.

📄 License
This project is licensed under the MIT License.