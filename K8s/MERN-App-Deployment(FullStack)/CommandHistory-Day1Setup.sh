[root@ip-172-31-36-193 mern-app-practical]# history
    1  cd /
    2  yum install docker -y
    3  systemctl start docker
    4  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
    5  sudo rpm -Uvh minikube-latest.x86_64.rpm
    6  minikube start --force
    7  docker ps
    8  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.35.3/2026-04-08/bin/linux/amd64/kubectl
    9  chmod +x ./kubectl
   10  cp ./kubectl /usr/bin/
   11  kubectl get pods
   12  kubectl
   13  kubectl run mypod nginx
   14  kubectl run mypod --image nginx
   15  kubectl get pods
   16  kubectl get pods
   17  kubectl delete pod mypod
   18  kubectl get pods
   19  kubectl create deployment --image=nginx
   20  kubectl create deployment --image nginx
   21  kubectl create deployment gfgdeployment1 --image nginx
   22  kubectl get deployment
   23  kubectl get pods
   24  kubectl get rs
   25  vi gfg-pod.yaml
   26  kubectl api-versions
   27  vi gfg-pod.yaml
   28  ls
   29  kubectl apply -f gfg-pod.yaml 
   30  kubectl get pods
   31  vi gfg-deployment.yaml
   32  kubectl get deployment
   33  kubectl delete pod gfgdeployment1-5cc5477bdc-rtlhj
   34  kubectl get pod
   35  vi gfg-deployment.yaml 
   36  cat gfg-pod.yaml 
   37  vi gfg-deployment.yaml 
   38  kubectl get pods
   39  vi gfg-deployment.yaml 
   40  kubectl apply -f gfg-deployment.yaml 
   41  kubectl get pods
   42  kubectl get deployment
   43  kubectl get rs
   44  kubectl delete pod gfg43-deployment-79b9756d55-5bb2l
   45  kubectl get rs
   46  kubectl get pods
   47  kubectl describe gfg43-deployment-79b9756d55-5g2xj
   48  kubectl describe pod gfg43-deployment-79b9756d55-5g2xj
   49  curl 10.244.0.7
   50  docker exec -it minikube bash
   51  docker inspect minikube
   52  ping 192.168.49.2
   53  vi gfg-service.yaml
   54  cat gfg-deployment.yaml 
   55  vi gfg-service.yaml
   56  kubectl get svc
   57  kubectl apply -f gfg-service.yaml 
   58  vi gfg-service.yaml
   59  kubectl apply -f gfg-service.yaml 
   60  kubectl get svc
   61  curl 192.168.49.2:30699
   62  curl 192.168.49.2:30699
   63  curl 192.168.49.2:30699
   64  curl 192.168.49.2:30699
   65  kubectl get deployment
   66  kubectl get pods
   67  kubectl delete pod gfg43-deployment-79b9756d55-5g2xj   
   68  curl 192.168.49.2:30699
   69  cat gfg-deployment.yaml 
   70  mkdir mern-app-practical
   71  cd mern-app-practical/
   72  vi mongo-app.yaml
   73  vi secret.yaml
   74  kubectl apply -f secret.yaml 
   75  kubectl get secret
   76  cat secret.yaml 
   77  vi mongo-app.yaml 
   78  kubectl describe secret
   79  vi mongo-app.yaml 
   80  kubectl apply -f mongo-app.yaml 
   81  vi mongo-app.yaml 
   82  kubectl apply -f mongo-app.yaml 
   83  kubectl get deployment
   84  kubectl get pods
   85  kubectl get deployment
   86  kubectl delete deployment gfg43-deployment
   87  kubectl delete deployment gfgdeployment1
   88  kubectl get pods
   89  kubectl delete pod gfg43-pod
   90  kubectl get pods
   91  kubectl get deployment
   92  vi mongo-express-webapp.yaml
   93  cat mongo-app.yaml 
   94  vi mongo-express-webapp.yaml
   95  kubectl get pods
   96  ls
   97  kubectl describe pod mongo-deployment-6bf99984f6-z8dzq
   98  vi mongo-app.yaml 
   99  kubectl apply -f mongo-app.yaml 
  100  kubectl get deployment
  101  kubectl get pods
  102  vi mongo-service.yaml
  103  kubectl apply -f mongo-service.yaml 
  104  kubectl get svc
  105  cat mongo-app.yaml 
  106  vi mongo-express-webapp.yaml 
  107  kubectl get svc
  108  vi mongo-express-webapp.yaml 
  109  vi mongo-config.yaml
  110  kubectl apply -f mongo-config.yaml 
  111  kubectl get configmap
  112  kubectl describe configmap mongo-service-config
  113  vi mongo-express-webapp.yaml 
  114  kubectl describe configmap mongo-service-config
  115  vi mongo-express-webapp.yaml 
  116  kubectl apply -f mongo-express-webapp.yaml 
  117  kubectl get deployments
  118  kubectl get pods
  119  vi mongo-express-webapp.yaml 
  120  kubectl apply -f mongo-express-webapp.yaml 
  121  kubectl get pods
  122  kubectl get pods
  123  vi webapp-service.yaml
  124  kubectl apply -f webapp-service.yaml 
  125  vi webapp-service.yaml
  126  kubectl apply -f webapp-service.yaml 
  127  kubectl get svc
  128  cat webapp-service.yaml 
  129  curl 192.168.49.2:32478
  130  kubectl get pods
  131  kubectl logs webapp-deployment-746cf6b7c-4fcnf
  132  curl 192.168.49.2:32478
  133  curl 192.168.49.2:32478
  134  yum install socat -y
  135  socat TCP4-LISTEN:8081,fork,su=nobody TCP4:192.157.49.2:32478 &
  136  id nobody
  137  netstat -tnlp
  138  kubectl get svc
  139  fg
  140  socat TCP4-LISTEN:8081,fork,su=nobody TCP4:192.168.49.2:32478 &
  141  socat TCP4-LISTEN:8082,fork,su=nobody TCP4:192.168.49.2:32478 &
  142  kubectl get pods
  143  history