## Launch an EC2 Instance with t2.medium Instance Type(We will configure Minikube Server on it)

# Install Minikube
```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
sudo rpm -Uvh minikube-latest.x86_64.rpm
minikube start --force
```
# Install kubectl
```bash
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.35.3/2026-04-08/bin/linux/amd64/kubectl
chmod +x ./kubectl
cp ./kubectl /usr/bin/
```
