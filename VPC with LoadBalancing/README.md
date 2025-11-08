
# 🏗️ **Terraform AWS Infrastructure: File-by-File Explanation**

### Terraform Files List in the Project Order Created

- `provider.tf`

- `vpc.tf`

- `subnets.tf`

- `route.tf`

- `subnet_association.tf`

- `internet_gateway.tf`

- `security_group.tf`

- `launch_template.tf`

- `loadbalancer.tf`

- `auto_scaling_group.tf`

- `backend.tf`

- `backend-config.tf`


### Information for each file

###### `provider.tf` → Where Terraform Connects

* Tells Terraform which cloud provider (AWS) and region to use.
  *Without this, Terraform doesn’t know where to build your infra.*

---

###### `vpc.tf` → Creates the Main Network

* Defines your Virtual Private Cloud (VPC) — the private network for all resources.
  *All AWS components like EC2, RDS, and ALB will live inside this VPC.*

---

###### `subnets.tf` → Divides the Network

* Creates separate subnets inside the VPC (usually public and private).
  *Public subnets for load balancers or EC2s; private subnets for databases.*

---

###### `internet_gateway.tf` → Connects VPC to the Internet

* Provides Internet access for public subnets.
  *Without this, instances in public subnets can’t connect outside AWS.*

---

###### `route.tf` → Defines Traffic Paths

* Creates route tables that decide how traffic flows inside and outside the VPC.
  *Example: All Internet traffic (0.0.0.0/0) goes through the Internet Gateway.*

---

###### `subnet_association.tf` → Links Routes to Subnets

* Associates each subnet with a route table.
  *This makes routing rules actually apply to specific subnets.*

---

###### `security_group.tf` → Controls Access (Firewall Rules)

* Defines inbound and outbound traffic rules for EC2s and Load Balancers.
  *Example: ALB SG allows HTTP (80), EC2 SG allows only from ALB.*

---

###### `launch_template.tf` → Defines EC2 Configuration

* Template that describes how to create EC2 instances (AMI, type, user data, SGs).
  *Used by Auto Scaling Groups to launch identical EC2 servers.*

---

###### `loadbalancer.tf` → Handles Traffic Distribution

* Creates an Application Load Balancer (ALB), Target Group, and Listener.
  *Directs incoming traffic to healthy EC2 instances in the ASG.*

---

###### `auto_scaling_group.tf` → Manages Scaling Automatically

* Uses the Launch Template to create, monitor, and terminate EC2 instances.
  *Ensures your app scales up with load and scales down to save cost.*

---

###### `backend.tf` → Defines Where Terraform Stores State

* Specifies the S3 bucket and DynamoDB table for Terraform state storage.
  *Without this, Terraform will store state locally.*

---

###### `backend-config.tf` → Supplies Parameters to Backend

* Supplies parameters (like bucket, region) to the backend.
  *Without this, Terraform won’t know where to store state.*

---




| Layer             | File(s)                                                                            | Purpose                                    |
| ----------------- | ---------------------------------------------------------------------------------- | ------------------------------------------ |
| 🌍 Network        | `vpc.tf`, `subnets.tf`, `route.tf`, `internet_gateway.tf`, `subnet_association.tf` | Builds your private cloud and connectivity |
| 🔒 Security       | `security_group.tf`                                                                | Controls access between layers (Add security)             |
| ⚙️ Compute        | `launch_template.tf`                                                               | Defines and manages your EC2 servers (Define how servers look)       |
| ⚖️ Load Balancing | `loadbalancer.tf`                                                                  | Distributes traffic across servers (Distribute traffic)         |
| 📊 Auto Scaling    | `auto_scaling_group.tf`                                                            | Manages the number of servers (Scale automatically)               |
| 🧩 Provider       | `provider.tf`                                                                      | Connects Terraform to AWS (Where Terraform Connects)                  |
| 📦 Backend        | `backend.tf`                                                                           | Defines *where* Terraform stores state |
| 📦 Backend Config | `backend-config.tf`                                                                    | Supplies *parameters* (like bucket, region) to backend | CLI or `.hcl` file |

