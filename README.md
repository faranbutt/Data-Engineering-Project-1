# Data Engineering Project -> Taxi Data to AWS S3
This Data Engineering project focuses on efficiently ingesting taxi data from various CSV files into AWS S3 using Magi.ai pipelines. The entire infrastructure is provisioned and managed with Terraform, ensuring scalability, reliability, and ease of deployment.
## Key Features

- **Magi.ai Pipelines Integration:** Leverage the power of Magi.ai pipelines to seamlessly upload and manage taxi data from disparate sources.
  
- **AWS S3 Storage:** Utilize AWS S3 as a robust storage solution for storing and organizing large volumes of taxi-related data.

- **Terraform Infrastructure as Code (IaC):** Employ Terraform scripts to automate the provisioning and configuration of AWS resources, ensuring consistency and reproducibility.
## Flow Diagram:
![image](https://github.com/zeeshan1122334455/Data_Engineering_Zoomcamp/assets/149190647/d1ab1ef0-a61b-4f62-9225-595bdda038fd)

## Overall Pipeline in Mage:
![Alt text](image-3.png)

## Fetched Data using Data Loader
![Alt text](image-4.png)

## Transformed and Tested Data
![Alt text](image-7.png)

## Loaded data to Postgres
![Alt text](image-6.png)

## Loaded data to S3 
![Alt text](image-1.png)

## Loaded data in partitions
![Alt text](image-2.png)

## Added Trigger to run pipeline daily
![Alt text](image.png) 
