[root@ip-172-31-40-88 /]# history
    1  cd /
    2  yum install docker -y
    3  systemctl start docker
    4  docker run -p 8080:8080 -p 50000:50000 -dit --name jenkins --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk21
    5  docker ps
    6  docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
    7  netstat -tnlp
    8  cp /etc/ssh/sshd_config .
    9  ls
   10  vi sshd_config 
   11  vi Dockerfile
   12  docker build -t jenkins-worker-image .
   13  vi Dockerfile
   14  docker build -t jenkins-worker-image .
   15  docker ps
   16  docker images
   17  docker run -dit --name worker1 -p 81:22 jenkins-worker-image
   18  docker ps
   19  docker exec -it worker1 ls /root
   20  docker inspect worker1
   21  docker ps
   22  docker inspect jenkins
   23  docker ps
   24  systemctl status docker
   25  docker ps
   26  docker images
   27  vim /usr/lib/systemd/system/docker.service 
   28  systemctl daemon-reload
   29  systemctl restart docker
   30  docker ps
   31  docker ps -a
   32  docker start worker1
   33  docker ps
   34  docker images
   35  docker login -u jinny1
   36  docker tag jenkins-worker-image jinny1/jenkins-worker-image
   37  docker images
   38  docker push jinny1/jenkins-worker-image
   39  docker ps
   40  docker ps
   41  date
   42  date
   43  watch date
   44  watch docker ps
   45  curl -sO http://13.126.45.216:8080/jnlpJars/agent.jar
   46  wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.rpm
   47  yum install jdk-21_linux-x64_bin.rpm -y
   48  java -jar agent.jar -url http://13.126.45.216:8080/ -secret d08828fb0b7d28a7fe609f6f9e770be43d4bc5d96545fad7916a6d679b6c6d0d -name ec2 -webSocket -workDir "/data" &
   49  yum install git -y
   50  mkdir /data
   51  docker ps
   52  docker ps -a
   53  clear
   54  ls
   55  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
   56  sudo rpm -Uvh minikube-latest.x86_64.rpm
   57  minikube
   58  minikube start
   59  minikube start --force
   60  docker ps
   61  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.35.3/2026-04-08/bin/linux/amd64/kubectl
   62  ls
   63  chmod +x kubectl 
   64  ls -l
   65  ./kubectl 
   66  cp kubectl /usr/bin/
   67  date
   68  which date
   69  ./kubectl 
   70  cp kubectl /usr/bin/
   71  kubectl
   72  kubectl --version
   73  kubectl --v
   74  kubectl -v
   75  clear
   76  kubectl get pods
   77  kubectl run mypod --image=nginx
   78  kubectl get pods
   79  kubectl describe pod mypod
   80  docker ps
   81  docker images
   82  kubectl get pods
   83  kubectl exec -it mypod -- /bin/bash
   84  kubectl get pods
   85  kubectl delete pod mypod
   86  kubectl get pods
   87  kubectl create deployment gfgdeployment --image=nginx
   88  kubectl get pods
   89  kubectl get deployment
   90  kubectl get rs
   91  kubectl get pods
   92  kubectl delete pod gfgdeployment-7cdd6c774b-kbzg4
   93  kubectl get rs
   94  kubectl get pods
   95  kubectl describe pod gfgdeployment-7cdd6c774b-7c47h
   96  curl 10.244.0.5
   97  docker ps
   98  docker exec -it minikube bash
   99  docker ps
  100  kubectl expose deployment gfgdeployment --port 80 --type=NodePort
  101  kubectl get svc
  102  minikube ip
  103  ping 192.168.49.2
  104  curl 192.168.49.2:31267
  105  history