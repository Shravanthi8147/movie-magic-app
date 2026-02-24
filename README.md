 🎬 Movie Magic – Smart Movie Ticket Booking System

📌 Project Description

Movie Magic is a cloud-based Smart Movie Ticket Booking System deployed on Amazon Web Services (AWS) using Terraform as Infrastructure as Code (IaC).
The project automates the provisioning of AWS resources including a custom VPC, public subnet, EC2 instance, and an RDS MySQL database. The backend application is developed using Python Flask and hosted on an EC2 instance. User booking details are securely stored in the RDS database.
This project demonstrates real-world cloud deployment practices such as infrastructure automation, secure networking using security groups, and database integration in a scalable cloud environment.
The main objective of this project is to understand end-to-end cloud architecture design, infrastructure provisioning using Terraform, and application deployment on AWS.

🏗️ Architecture Diagram


                         🌐 Internet
                              │
                              ▼
                   ┌────────────────────┐
                   │        VPC         │
                   │    10.0.0.0/16     │
                   └────────────────────┘
                              │
                ┌─────────────┴─────────────┐
                │                           │
                ▼                           ▼
      ┌──────────────────┐        ┌──────────────────┐
      │   Public Subnet  │        │  Private Subnet  │
      │   10.0.1.0/24    │        │   10.0.2.0/24    │
      └──────────────────┘        └──────────────────┘
                │                           │
                ▼                           ▼
      ┌──────────────────┐        ┌──────────────────┐
      │   EC2 Instance   │────────▶   Amazon RDS     │
      │   (Flask App)    │ 3306    │   MySQL DB      │
      └──────────────────┘        └──────────────────┘
                │
                ▼
        🎬 Movie Booking Web Application
                │
                ▼
          🗄️ Booking Data Stored

Infrastructure Provisioned Using Terraform

🔁 Application Flow

User → EC2 (Flask App) → RDS (MySQL) → Data Stored




