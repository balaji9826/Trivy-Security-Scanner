# Trivy-Based Security Scanner

## 1. Project Overview
A practical Software Testing project that uses Trivy to identify vulnerabilities in Node.js dependencies.

## 2. Objectives
- Identify vulnerable software dependencies.
- Perform automated vulnerability scanning.
- Generate JSON security reports.
- Fix identified vulnerabilities.
- Verify remediation through rescanning.

## 3. Technologies and Tools Used
- Trivy 0.76.1
- Node.js
- npm
- PowerShell
- Visual Studio Code
- Git and GitHub

## 4. Project Description
This project demonstrates filesystem vulnerability scanning using Trivy. An intentionally outdated Lodash dependency was installed to demonstrate vulnerability detection and remediation.

## 5. Implementation and Methodology

1. Created a Node.js project.
2. Installed Lodash version 4.17.20.
3. Performed the initial Trivy vulnerability scan.
4. Detected five vulnerabilities.
5. Upgraded Lodash to version 4.18.1.
6. Performed the final Trivy scan.
7. Generated JSON security reports.
8. Created a PowerShell script to automate scanning.

## 6. Actual Scan Results

### Initial Scan
- Dependency: Lodash 4.17.20
- Total vulnerabilities: 5
- HIGH: 2
- MEDIUM: 3
- LOW: 0
- CRITICAL: 0

### Final Scan
- Dependency: Lodash 4.18.1
- Total vulnerabilities: 0

## 7. How to Run the Project

### Prerequisites
- Node.js and npm
- Trivy
- PowerShell

### Execution
Open PowerShell in the project directory and execute:

```powershell
.\scan.ps1
