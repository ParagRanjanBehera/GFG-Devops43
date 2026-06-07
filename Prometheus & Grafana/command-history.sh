[root@ip-172-31-12-182 /]# history
    1  cd /
    2  yum install httpd -y
    3  systemctl start httpd
    4  clear
    5  wget https://github.com/prometheus/node_exporter/releases/download/v1.10.2/node_exporter-1.10.2.linux-amd64.tar.gz
    6  ls
    7  tar -xvzf node_exporter-1.10.2.linux-amd64.tar.gz 
    8  ls
    9  cp node_exporter-1.10.2.linux-amd64/node_exporter /usr/bin
   10  node_exporter
   11  node_exporter
   12  history

[root@ip-172-31-37-219 prometheus-3.9.1.linux-amd64]# history
    1  cd /
    2  wget https://github.com/prometheus/prometheus/releases/download/v3.9.1/prometheus-3.9.1.linux-amd64.tar.gz
    3  ls
    4  tar -xvzf prometheus-3.9.1.linux-amd64.tar.gz 
    5  ls
    6  cd prometheus-3.9.1.linux-amd64/
    7  ls
    8  date
    9  pwd
   10  cp prometheus /usr/bin
   11  prometheus --version
   12  vi prometheus.yml 
   13  prometheus 
   14  wget -q -O gpg.key https://rpm.grafana.com/gpg.key
   15  sudo rpm --import gpg.key
   16  vi /etc/yum.repos.d/gafana.repo
   17  yum repolist
   18  yum install grafana
   19  systemctl start grafana
   20  systemctl start grafana-server
   21  prometheus
   22  yum install docker -y
   23  vi /etc/docker/daemon.json
   24  systemctl daemon-reload
   25  systemctl start docker
   26  vi prommetheus.yml
   27  vi prometheus.yml 
   28  prometheus &
   29  pwd
   30  cd /
   31  docker run -dit httpd
   32  docker run -dit httpd
   33  docker run -dit httpd
   34  docker stop e5a85
   35  docker ps -a
   36  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
   37  sudo rpm -Uvh minikube-latest.x86_64.rpm
   38  minikube start --force
   39  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.32.0/2024-12-20/bin/linux/amd64/kubectl
   40  chmod +x ./kubectl
   41  cp ./kubectl /usr/bin/curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.32.0/2024-12-20/bin/linux/amd64/kubectl
   42  chmod +x ./kubectl
   43  cp ./kubectl /usr/bin/
   44  kubectl get pods
   45  vi mysql-pod.yaml
   46  kubectl apply -f mysql-pod.yaml 
   47  kubectl get pods
   48  kubectl get svc
   49  kubectl get pods
   50  kubectl get pods
   51  kubectl get pods
   52  kubectl get pods
   53  kubectl get pods
   54  kubectl describe pod
   55  kubectl get pods
   56  kubectl describe pod
   57  kubectl logs pod
   58  kubectl logs pods
   59  kubectl get pods
   60  kubectl logs mysql-container-with-metrics-exporter
   61  kubectl logs mysql-container-with-metrics-exporter -c mysql-exporter
   62  vi mysql-pod.yaml 
   63  kubectl apply -f mysql-pod.yaml 
   64  kubectl get pods
   65  kubectl get pods
   66  kubectl get pods
   67  kubectl describe pod
   68  kubectl logs mysql-container-with-metrics-exporter -c mysql-exporter
   69  kubectl delete pod mysql-container-with-metrics-exporter
   70  vi mysql-pod.yaml 
   71  kubectl apply -f mysql-pod.yaml 
   72  kubectl get pods
   73  kubectl get pods
   74  cat mysql-pod.yaml 
   75  kubectl get pods
   76  kubectl get logs
   77  kubectl get svc
   78  curl 192.168.49.2:31612/metrics
   79  vi prometheus-3.9.1.linux-amd64/prometheus.yml 
   80  prometheus &
   81  vi prometheus-3.9.1.linux-amd64/prometheus.yml 
   82  prometheus
   83  /usr/bin/prometheus 
   84  cd prometheus-3.9.1.linux-amd64/
   85  ls
   86  which date
   87  cp prometheus /usr/bin/
   88  prometheus 
   89  fg
   90  prometheus 
   91  history
[root@ip-172-31-37-219 prometheus-3.9.1.linux-amd64]# 