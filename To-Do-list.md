# ✅ GCP Application Deployment with Load Balancer — Self-Guided Checklist

---

## 🔹 1. GCP Project Setup
- [ ] Create GCP Project (`gcloud projects create`)
- [ ] Enable Billing for the project
- [ ] Enable required APIs:
  - [ ] Compute Engine
  - [ ] Cloud Run or GKE
  - [ ] Cloud DNS
  - [ ] Cloud Load Balancing
  - [ ] Certificate Manager
  - [ ] Artifact Registry
  - [ ] IAM

---

## 🔹 2. Domain + DNS Configuration
- [ ] Register or verify domain in Google Search Console
- [ ] Create Cloud DNS zone for your domain
- [ ] Add A or CNAME record pointing to your Load Balancer IP

---

## 🔹 3. Containerization
- [ ] Write `Dockerfile` for your application
- [ ] Build and test the container locally
- [ ] Push the image to Artifact Registry or Docker Hub

---

## 🔹 4. Deployment Choice

### ✅ Option A: Cloud Run
- [ ] Deploy the service using `gcloud run deploy`
- [ ] Create Serverless NEG
- [ ] Configure External HTTP(S) Load Balancer:
  - [ ] Backend: Serverless NEG (Cloud Run)
  - [ ] Frontend: Global IP address and custom domain
  - [ ] URL Map and Target Proxy for routing
- [ ] Set up SSL certificate (using Google-managed `ManagedCertificate`)

### ✅ Option B: GKE
- [ ] Create a GKE Cluster (Autopilot or Standard)
- [ ] Apply Deployment and Service YAML files
- [ ] Choose one:
  - [ ] Service with `type: LoadBalancer`
  - [ ] Ingress + `ManagedCertificate` for HTTPS
- [ ] Reserve Static IP address
- [ ] Point DNS to Load Balancer IP

---

## 🔹 5. SSL/TLS Configuration
- [ ] Create and apply `ManagedCertificate` resource
- [ ] Attach certificate to Load Balancer frontend
- [ ] Wait for certificate provisioning (~15–30 minutes)

---

## 🔹 6. CI/CD (Optional but Recommended)
- [ ] Set up GitHub Actions or Cloud Build
- [ ] Define workflow: Build → Push → Deploy
- [ ] Automate testing and rollback on failure

---

> 💡 Tip: Keep resource names and project configurations consistent across your infrastructure.
