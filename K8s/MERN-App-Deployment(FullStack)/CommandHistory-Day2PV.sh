[root@ip-172-31-33-244 /]# curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
0.226.0
[root@ip-172-31-33-244 /]# curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
kubectl version --short --client
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 58875k 100 58875k   0     0  8644k     0   0:00:06  0:00:06 --:--:-- 12695k
Client Version: v1.19.6-eks-49a6c0
[root@ip-172-31-33-244 /]# 
[root@ip-172-31-33-244 /]# 
[root@ip-172-31-33-244 /]# 
[root@ip-172-31-33-244 /]# eksctl create cluster --name=EKS-16 \
                      --region=ap-south-1 \
                      --zones=ap-south-1a,ap-south-1b \
                      --without-nodegroup
2026-05-16 06:09:44 [ℹ]  eksctl version 0.226.0
2026-05-16 06:09:44 [ℹ]  using region ap-south-1
2026-05-16 06:09:44 [ℹ]  subnets for ap-south-1a - public:192.168.0.0/19 private:192.168.64.0/19
2026-05-16 06:09:44 [ℹ]  subnets for ap-south-1b - public:192.168.32.0/19 private:192.168.96.0/19
2026-05-16 06:09:44 [!]  Auto Mode will be enabled by default in an upcoming release of eksctl. This means managed node groups and managed networking add-ons will no longer be created by default. To maintain current behavior, explicitly set 'autoModeConfig.enabled: false' in your cluster configuration. Learn more: https://eksctl.io/usage/auto-mode/
2026-05-16 06:09:44 [ℹ]  using Kubernetes version 1.34
2026-05-16 06:09:44 [ℹ]  creating EKS cluster "EKS-16" in "ap-south-1" region with 
2026-05-16 06:09:44 [ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=ap-south-1 --cluster=EKS-16'
2026-05-16 06:09:44 [ℹ]  Kubernetes API endpoint access will use default of {publicAccess=true, privateAccess=false} for cluster "EKS-16" in "ap-south-1"
2026-05-16 06:09:44 [ℹ]  CloudWatch logging will not be enabled for cluster "EKS-16" in "ap-south-1"
2026-05-16 06:09:44 [ℹ]  you can enable it with 'eksctl utils update-cluster-logging --enable-types={SPECIFY-YOUR-LOG-TYPES-HERE (e.g. all)} --region=ap-south-1 --cluster=EKS-16'
2026-05-16 06:09:44 [ℹ]  default addons vpc-cni, kube-proxy, coredns, metrics-server were not specified, will install them as EKS addons
2026-05-16 06:09:44 [ℹ]  
2 sequential tasks: { create cluster control plane "EKS-16", 
    2 sequential sub-tasks: { 
        1 task: { create addons },
        wait for control plane to become ready,
    } 
}
2026-05-16 06:09:44 [ℹ]  building cluster stack "eksctl-EKS-16-cluster"
2026-05-16 06:09:44 [ℹ]  deploying stack "eksctl-EKS-16-cluster"
2026-05-16 06:10:14 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:10:44 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:11:44 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:12:44 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:13:44 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:14:44 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:15:44 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:16:44 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:17:44 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:18:44 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-cluster"
2026-05-16 06:18:45 [!]  recommended policies were found for "vpc-cni" addon, but since OIDC is disabled on the cluster, eksctl cannot configure the requested permissions; the recommended way to provide IAM permissions for "vpc-cni" addon is via pod identity associations; after addon creation is completed, add all recommended policies to the config file, under `addon.PodIdentityAssociations`, and run `eksctl update addon`
2026-05-16 06:18:45 [ℹ]  creating addon: vpc-cni
2026-05-16 06:18:45 [ℹ]  successfully created addon: vpc-cni
2026-05-16 06:18:46 [ℹ]  creating addon: kube-proxy
2026-05-16 06:18:46 [ℹ]  successfully created addon: kube-proxy
2026-05-16 06:18:47 [ℹ]  creating addon: coredns
2026-05-16 06:18:47 [ℹ]  successfully created addon: coredns
2026-05-16 06:20:48 [ℹ]  waiting for the control plane to become ready
2026-05-16 06:20:48 [✔]  saved kubeconfig as "/root/.kube/config"
2026-05-16 06:20:48 [ℹ]  no tasks
2026-05-16 06:20:48 [✔]  all EKS cluster resources for "EKS-16" have been created
2026-05-16 06:20:48 [ℹ]  creating addon: metrics-server
2026-05-16 06:20:49 [ℹ]  successfully created addon: metrics-server
2026-05-16 06:20:49 [ℹ]  kubectl command should work with "/root/.kube/config", try 'kubectl get nodes'
2026-05-16 06:20:49 [✔]  EKS cluster "EKS-16" in "ap-south-1" region is ready
[root@ip-172-31-33-244 /]# eksctl create nodegroup --cluster=EKS-16 \
                      --region=ap-south-1 \
                      --name=node2 \
                      --node-type=t3.medium \
                      --nodes=2 \
                      --nodes-min=2 \
                      --nodes-max=2 \
                      --node-volume-size=20 \
                      --ssh-access \
                      --ssh-public-key=DevOps \
                      --managed \
                      --asg-access \
                      --external-dns-access \
                      --full-ecr-access \
                      --appmesh-access \
                      --alb-ingress-access
2026-05-16 06:23:10 [ℹ]  will use version 1.34 for new nodegroup(s) based on control plane version
2026-05-16 06:23:11 [ℹ]  nodegroup "node2" will use "" [AmazonLinux2023/1.34]
2026-05-16 06:23:11 [ℹ]  using EC2 key pair "DevOps"
2026-05-16 06:23:11 [ℹ]  1 nodegroup (node2) was included (based on the include/exclude rules)
2026-05-16 06:23:11 [ℹ]  will create a CloudFormation stack for each of 1 managed nodegroups in cluster "EKS-16"
2026-05-16 06:23:11 [ℹ]  
2 sequential tasks: { fix cluster compatibility, 1 task: { 1 task: { create managed nodegroup "node2" } } 
}
2026-05-16 06:23:11 [ℹ]  checking cluster stack for missing resources
2026-05-16 06:23:11 [ℹ]  cluster stack has all required resources
2026-05-16 06:23:11 [ℹ]  building managed nodegroup stack "eksctl-EKS-16-nodegroup-node2"
2026-05-16 06:23:11 [ℹ]  deploying stack "eksctl-EKS-16-nodegroup-node2"
2026-05-16 06:23:11 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-nodegroup-node2"
2026-05-16 06:23:41 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-nodegroup-node2"
2026-05-16 06:24:18 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-nodegroup-node2"
2026-05-16 06:25:34 [ℹ]  waiting for CloudFormation stack "eksctl-EKS-16-nodegroup-node2"
2026-05-16 06:25:34 [ℹ]  no tasks
2026-05-16 06:25:34 [✔]  created 0 nodegroup(s) in cluster "EKS-16"
2026-05-16 06:25:34 [ℹ]  nodegroup "node2" has 2 node(s)
2026-05-16 06:25:34 [ℹ]  node "ip-192-168-53-168.ap-south-1.compute.internal" is ready
2026-05-16 06:25:34 [ℹ]  node "ip-192-168-7-144.ap-south-1.compute.internal" is ready
2026-05-16 06:25:34 [ℹ]  waiting for at least 2 node(s) to become ready in "node2"
2026-05-16 06:25:34 [ℹ]  nodegroup "node2" has 2 node(s)
2026-05-16 06:25:34 [ℹ]  node "ip-192-168-53-168.ap-south-1.compute.internal" is ready
2026-05-16 06:25:34 [ℹ]  node "ip-192-168-7-144.ap-south-1.compute.internal" is ready
2026-05-16 06:25:34 [✔]  created 1 managed nodegroup(s) in cluster "EKS-16"
2026-05-16 06:25:34 [ℹ]  checking security group configuration for all nodegroups
2026-05-16 06:25:34 [ℹ]  all nodegroups have up-to-date cloudformation templates
[root@ip-172-31-33-244 /]# 
[root@ip-172-31-33-244 /]# 
[root@ip-172-31-33-244 /]# 
[root@ip-172-31-33-244 /]# kubectl get pods
No resources found in default namespace.
[root@ip-172-31-33-244 /]# kubectl get nodes
NAME                                            STATUS   ROLES    AGE     VERSION
ip-192-168-53-168.ap-south-1.compute.internal   Ready    <none>   5m47s   v1.34.7-eks-7fcd7ec
ip-192-168-7-144.ap-south-1.compute.internal    Ready    <none>   5m44s   v1.34.7-eks-7fcd7ec
[root@ip-172-31-33-244 /]# 
[root@ip-172-31-33-244 /]# 
[root@ip-172-31-33-244 /]# 
[root@ip-172-31-33-244 /]# yum install git -y > /dev/null
[root@ip-172-31-33-244 /]# git clone https://github.com/sudhanshuvlog/GFG-Devops43.git
Cloning into 'GFG-Devops43'...
remote: Enumerating objects: 374, done.
remote: Counting objects: 100% (56/56), done.
remote: Compressing objects: 100% (52/52), done.
remote: Total 374 (delta 8), reused 49 (delta 4), pack-reused 318 (from 1)
Receiving objects: 100% (374/374), 57.62 MiB | 17.59 MiB/s, done.
Resolving deltas: 100% (81/81), done.
[root@ip-172-31-33-244 /]# cd GFG-Devops43/K8s/
[root@ip-172-31-33-244 K8s]# cd MERN-App-Deployment\(FullStack\)/
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# pwd
/GFG-Devops43/K8s/MERN-App-Deployment(FullStack)
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi mongo-app.yaml 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f secret.yaml 
secret/mongo-secret created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f mongo-app.yaml 
deployment.apps/mongo-deployment created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f mongo-service.yaml 
service/mongo-service created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get svc
NAME            TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)     AGE
kubernetes      ClusterIP   10.100.0.1      <none>        443/TCP     17m
mongo-service   ClusterIP   10.100.10.241   <none>        27017/TCP   8s
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f mongo-config.yaml 
configmap/mongo-service-config created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# ls
Architecture.png  Architecture1.png  CommandHistory-Day1Setup.sh  Readme.md  express-webapp.yaml  mongo-app.yaml  mongo-config.yaml  mongo-service.yaml  secret.yaml  webappservice.yaml
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f express-webapp.yaml 
deployment.apps/webapp-deployment created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f webappservice.yaml 
service/webapp-service created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
mongo-deployment-b6c557fc9-97cjj     1/1     Running   0          112s
mongo-deployment-b6c557fc9-r88ld     1/1     Running   0          112s
mongo-deployment-b6c557fc9-v974v     1/1     Running   0          112s
webapp-deployment-85bcdbbd4d-9mczx   1/1     Running   0          24s
webapp-deployment-85bcdbbd4d-bzngj   1/1     Running   0          24s
webapp-deployment-85bcdbbd4d-gt6g7   1/1     Running   0          24s
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get svc
NAME             TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
kubernetes       ClusterIP   10.100.0.1       <none>        443/TCP          18m
mongo-service    ClusterIP   10.100.10.241    <none>        27017/TCP        109s
webapp-service   NodePort    10.100.192.107   <none>        8081:31128/TCP   15s
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl describe pod mongo-deployment-b6c557fc9-r88ld
Name:         mongo-deployment-b6c557fc9-r88ld
Namespace:    default
Priority:     0
Node:         ip-192-168-7-144.ap-south-1.compute.internal/192.168.7.144
Start Time:   Sat, 16 May 2026 06:32:48 +0000
Labels:       app=mongo
              pod-template-hash=b6c557fc9
Annotations:  <none>
Status:       Running
IP:           192.168.24.40
IPs:
  IP:           192.168.24.40
Controlled By:  ReplicaSet/mongo-deployment-b6c557fc9
Containers:
  mongo-db:
    Container ID:   containerd://1bf1effd4e55b5957bbccbde96d9f61cc429071c039e6949942b59e529078068
    Image:          mongo
    Image ID:       docker.io/library/mongo@sha256:d6566e93e6a913cdb622ebe34e0ae7937d50efa60e92363fb4a84404dc890415
    Port:           27017/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Sat, 16 May 2026 06:33:05 +0000
    Ready:          True
    Restart Count:  0
    Environment:
      MONGO_INITDB_ROOT_USERNAME:  <set to the key 'mongo-user' in secret 'mongo-secret'>      Optional: false
      MONGO_INITDB_ROOT_PASSWORD:  <set to the key 'mongo-password' in secret 'mongo-secret'>  Optional: false
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-kprk2 (ro)
Conditions:
  Type                        Status
  PodReadyToStartContainers   True 
  Initialized                 True 
  Ready                       True 
  ContainersReady             True 
  PodScheduled                True 
Volumes:
  kube-api-access-kprk2:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type    Reason     Age    From               Message
  ----    ------     ----   ----               -------
  Normal  Scheduled  3m20s  default-scheduler  Successfully assigned default/mongo-deployment-b6c557fc9-r88ld to ip-192-168-7-144.ap-south-1.compute.internal
  Normal  Pulling    3m20s  kubelet            Pulling image "mongo"
  Normal  Pulled     3m4s   kubelet            Successfully pulled image "mongo" in 16.122s (16.122s including waiting). Image size: 336171973 bytes.
  Normal  Created    3m4s   kubelet            Created container: mongo-db
  Normal  Started    3m4s   kubelet            Started container mongo-db
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get notes
error: the server doesn't have a resource type "notes"
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get nodes
NAME                                            STATUS   ROLES    AGE   VERSION
ip-192-168-53-168.ap-south-1.compute.internal   Ready    <none>   11m   v1.34.7-eks-7fcd7ec
ip-192-168-7-144.ap-south-1.compute.internal    Ready    <none>   11m   v1.34.7-eks-7fcd7ec
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl describe pod webapp-deployment-85bcdbbd4d-9mczx
Name:         webapp-deployment-85bcdbbd4d-9mczx
Namespace:    default
Priority:     0
Node:         ip-192-168-53-168.ap-south-1.compute.internal/192.168.53.168
Start Time:   Sat, 16 May 2026 06:34:16 +0000
Labels:       app=webapp
              pod-template-hash=85bcdbbd4d
Annotations:  <none>
Status:       Running
IP:           192.168.58.81
IPs:
  IP:           192.168.58.81
Controlled By:  ReplicaSet/webapp-deployment-85bcdbbd4d
Containers:
  mongo-express:
    Container ID:   containerd://7087e8094468d792d51d0afe38e608d341e0b5f15ab0b3db5984d3baa067b8bc
    Image:          mongo-express
    Image ID:       docker.io/library/mongo-express@sha256:1b23d7976f0210dbec74045c209e52fbb26d29b2e873d6c6fa3d3f0ae32c2a64
    Port:           8081/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Sat, 16 May 2026 06:34:26 +0000
    Ready:          True
    Restart Count:  0
    Environment:
      ME_CONFIG_MONGODB_ADMINUSERNAME:  <set to the key 'mongo-user' in secret 'mongo-secret'>             Optional: false
      ME_CONFIG_MONGODB_ADMINPASSWORD:  <set to the key 'mongo-password' in secret 'mongo-secret'>         Optional: false
      ME_CONFIG_MONGODB_SERVER:         <set to the key 'mongo-url' of config map 'mongo-service-config'>  Optional: false
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-r77kt (ro)
Conditions:
  Type                        Status
  PodReadyToStartContainers   True 
  Initialized                 True 
  Ready                       True 
  ContainersReady             True 
  PodScheduled                True 
Volumes:
  kube-api-access-r77kt:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type    Reason     Age    From               Message
  ----    ------     ----   ----               -------
  Normal  Scheduled  2m37s  default-scheduler  Successfully assigned default/webapp-deployment-85bcdbbd4d-9mczx to ip-192-168-53-168.ap-south-1.compute.internal
  Normal  Pulling    2m37s  kubelet            Pulling image "mongo-express"
  Normal  Pulled     2m28s  kubelet            Successfully pulled image "mongo-express" in 9.323s (9.323s including waiting). Image size: 58946518 bytes.
  Normal  Created    2m28s  kubelet            Created container: mongo-express
  Normal  Started    2m28s  kubelet            Started container mongo-express
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get node
NAME                                            STATUS   ROLES    AGE   VERSION
ip-192-168-53-168.ap-south-1.compute.internal   Ready    <none>   12m   v1.34.7-eks-7fcd7ec
ip-192-168-7-144.ap-south-1.compute.internal    Ready    <none>   12m   v1.34.7-eks-7fcd7ec
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
mongo-deployment-b6c557fc9-97cjj     1/1     Running   0          4m28s
mongo-deployment-b6c557fc9-r88ld     1/1     Running   0          4m28s
mongo-deployment-b6c557fc9-v974v     1/1     Running   0          4m28s
webapp-deployment-85bcdbbd4d-9mczx   1/1     Running   0          3m
webapp-deployment-85bcdbbd4d-bzngj   1/1     Running   0          3m
webapp-deployment-85bcdbbd4d-gt6g7   1/1     Running   0          3m
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get svc
NAME             TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
kubernetes       ClusterIP   10.100.0.1       <none>        443/TCP          22m
mongo-service    ClusterIP   10.100.10.241    <none>        27017/TCP        5m
webapp-service   NodePort    10.100.192.107   <none>        8081:31128/TCP   3m26s
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi pv.yaml
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f pv.yaml 
error: error validating "pv.yaml": error validating data: [ValidationError(PersistentVolume.spec.nodeAffinity.required): unknown field "nodeSelectorTerm" in io.k8s.api.core.v1.NodeSelector, ValidationError(PersistentVolume.spec.nodeAffinity.required): missing required field "nodeSelectorTerms" in io.k8s.api.core.v1.NodeSelector]; if you choose to ignore these errors, turn validation off with --validate=false
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi pv.yaml
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f pv.yaml 
The PersistentVolume "mongo-pv" is invalid: spec.volumeMode: Unsupported value: "FileSystem": supported values: "Block", "Filesystem"
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi pv.yaml
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f pv.yaml 
persistentvolume/mongo-pv created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pv
NAME       CAPACITY        ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM   STORAGECLASS          VOLUMEATTRIBUTESCLASS   REASON   AGE
mongo-pv   858993459200m   RWO            Retain           Available           local-mongo-storage   <unset>                          4s
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi pvc.yaml
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# cat pv.yaml 
apiVersion: v1
kind: PersistentVolume
metadata:
  name: mongo-pv
spec:
  capacity:
    storage: 0.8Gi
  volumeMode: Filesystem
  accessModes:
    - ReadWriteOnce
  storageClassName: local-mongo-storage
  persistentVolumeReclaimPolicy: Retain
  local:
    path: /storage/gfg
  nodeAffinity:
    required:
      nodeSelectorTerms:
      - matchExpressions:
        - key: hostname
          operator: In
          values:
            - ip-192-168-53-168.ap-south-1.compute.internal
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f pvc.yaml 
error: error validating "pvc.yaml": error validating data: ValidationError(PersistentVolumeClaim.spec): unknown field "accessMode" in io.k8s.api.core.v1.PersistentVolumeClaimSpec; if you choose to ignore these errors, turn validation off with --validate=false
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi pvc.yaml
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f pvc.yaml 
persistentvolumeclaim/mongo-pvc created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get  pvc
NAME        STATUS   VOLUME     CAPACITY        ACCESS MODES   STORAGECLASS          VOLUMEATTRIBUTESCLASS   AGE
mongo-pvc   Bound    mongo-pv   858993459200m   RWO            local-mongo-storage   <unset>                 5s
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pv
NAME       CAPACITY        ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM               STORAGECLASS          VOLUMEATTRIBUTESCLASS   REASON   AGE
mongo-pv   858993459200m   RWO            Retain           Bound    default/mongo-pvc   local-mongo-storage   <unset>                          7m16s
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi mongo-app.yaml 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f mongo-app.yaml 
error: error validating "mongo-app.yaml": error validating data: ValidationError(Deployment.spec.template): unknown field "volumes" in io.k8s.api.core.v1.PodTemplateSpec; if you choose to ignore these errors, turn validation off with --validate=false
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi mongo-app.yaml 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f mongo-app.yaml 
deployment.apps/mongo-deployment configured
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
mongo-deployment-74896c57f4-vbr7j    0/1     Pending   0          7s
mongo-deployment-b6c557fc9-97cjj     1/1     Running   0          49m
mongo-deployment-b6c557fc9-r88ld     1/1     Running   0          49m
mongo-deployment-b6c557fc9-v974v     1/1     Running   0          49m
webapp-deployment-85bcdbbd4d-9mczx   1/1     Running   0          47m
webapp-deployment-85bcdbbd4d-bzngj   1/1     Running   0          47m
webapp-deployment-85bcdbbd4d-gt6g7   1/1     Running   0          47m
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
mongo-deployment-74896c57f4-vbr7j    0/1     Pending   0          20s
mongo-deployment-b6c557fc9-97cjj     1/1     Running   0          49m
mongo-deployment-b6c557fc9-r88ld     1/1     Running   0          49m
mongo-deployment-b6c557fc9-v974v     1/1     Running   0          49m
webapp-deployment-85bcdbbd4d-9mczx   1/1     Running   0          48m
webapp-deployment-85bcdbbd4d-bzngj   1/1     Running   0          48m
webapp-deployment-85bcdbbd4d-gt6g7   1/1     Running   0          48m
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi mongo-app.yaml 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f mongo-app.yaml 
deployment.apps/mongo-deployment configured
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
mongo-deployment-74896c57f4-vbr7j    0/1     Pending   0          49s
mongo-deployment-b6c557fc9-97cjj     1/1     Running   0          50m
webapp-deployment-85bcdbbd4d-9mczx   1/1     Running   0          48m
webapp-deployment-85bcdbbd4d-bzngj   1/1     Running   0          48m
webapp-deployment-85bcdbbd4d-gt6g7   1/1     Running   0          48m
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl describe pod mongo-deployment-74896c57f4-vbr7j
Name:           mongo-deployment-74896c57f4-vbr7j
Namespace:      default
Priority:       0
Node:           <none>
Labels:         app=mongo
                pod-template-hash=74896c57f4
Annotations:    <none>
Status:         Pending
IP:             
IPs:            <none>
Controlled By:  ReplicaSet/mongo-deployment-74896c57f4
Containers:
  mongo-db:
    Image:      mongo
    Port:       27017/TCP
    Host Port:  0/TCP
    Environment:
      MONGO_INITDB_ROOT_USERNAME:  <set to the key 'mongo-user' in secret 'mongo-secret'>      Optional: false
      MONGO_INITDB_ROOT_PASSWORD:  <set to the key 'mongo-password' in secret 'mongo-secret'>  Optional: false
    Mounts:
      /data/db from mongo-volume (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-mqxst (ro)
Conditions:
  Type           Status
  PodScheduled   False 
Volumes:
  mongo-volume:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  mongo-pvc
    ReadOnly:   false
  kube-api-access-mqxst:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type     Reason            Age   From               Message
  ----     ------            ----  ----               -------
  Warning  FailedScheduling  66s   default-scheduler  0/2 nodes are available: 2 node(s) didn't match PersistentVolume's node affinity. no new claims to deallocate, preemption: 0/2 nodes are available: 2 Preemption is not helpful for scheduling.
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi pv.yaml 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f pv.yaml 
The PersistentVolume "mongo-pv" is invalid: nodeAffinity: Invalid value: {"Required":{"NodeSelectorTerms":[{"MatchExpressions":[{"Key":"kubernetes.io/hostname","Operator":"In","Values":["ip-192-168-53-168.ap-south-1.compute.internal"]}],"MatchFields":null}]}}: field is immutable, except for updating from beta label to GA
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# vi pv.yaml 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f pv.yaml 
The PersistentVolume "mongo-pv" is invalid: nodeAffinity: Invalid value: {"Required":{"NodeSelectorTerms":[{"MatchExpressions":[{"Key":"kubernetes.io/hostname","Operator":"In","Values":["ip-192-168-53-168.ap-south-1.compute.internal"]}],"MatchFields":null}]}}: field is immutable, except for updating from beta label to GA
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl delete pv mongo-pv
persistentvolume "mongo-pv" deleted

^C
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl delete pvc mongo-pvc
persistentvolumeclaim "mongo-pvc" deleted
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl delete pv mongo-pv
Error from server (NotFound): persistentvolumes "mongo-pv" not found
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f mongo-pv
error: the path "mongo-pv" does not exist
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f pv.yaml 
persistentvolume/mongo-pv created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl apply -f pvc.yaml 
persistentvolumeclaim/mongo-pvc created
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pv
NAME       CAPACITY        ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM               STORAGECLASS          VOLUMEATTRIBUTESCLASS   REASON   AGE
mongo-pv   858993459200m   RWO            Retain           Bound    default/mongo-pvc   local-mongo-storage   <unset>                          12s
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
mongo-deployment-74896c57f4-vbr7j    1/1     Running   0          4m51s
webapp-deployment-85bcdbbd4d-9mczx   1/1     Running   0          52m
webapp-deployment-85bcdbbd4d-bzngj   1/1     Running   0          52m
webapp-deployment-85bcdbbd4d-gt6g7   1/1     Running   0          52m
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl describe pod mongo-deployment-74896c57f4-vbr7j
Name:         mongo-deployment-74896c57f4-vbr7j
Namespace:    default
Priority:     0
Node:         ip-192-168-53-168.ap-south-1.compute.internal/192.168.53.168
Start Time:   Sat, 16 May 2026 07:26:51 +0000
Labels:       app=mongo
              pod-template-hash=74896c57f4
Annotations:  <none>
Status:       Running
IP:           192.168.51.13
IPs:
  IP:           192.168.51.13
Controlled By:  ReplicaSet/mongo-deployment-74896c57f4
Containers:
  mongo-db:
    Container ID:   containerd://0cda525f19a5ffcbc7e4e9f61d66a476b860b3d7dad927a046a9d225ddc89b44
    Image:          mongo
    Image ID:       docker.io/library/mongo@sha256:d6566e93e6a913cdb622ebe34e0ae7937d50efa60e92363fb4a84404dc890415
    Port:           27017/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Sat, 16 May 2026 07:26:52 +0000
    Ready:          True
    Restart Count:  0
    Environment:
      MONGO_INITDB_ROOT_USERNAME:  <set to the key 'mongo-user' in secret 'mongo-secret'>      Optional: false
      MONGO_INITDB_ROOT_PASSWORD:  <set to the key 'mongo-password' in secret 'mongo-secret'>  Optional: false
    Mounts:
      /data/db from mongo-volume (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-mqxst (ro)
Conditions:
  Type                        Status
  PodReadyToStartContainers   True 
  Initialized                 True 
  Ready                       True 
  ContainersReady             True 
  PodScheduled                True 
Volumes:
  mongo-volume:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  mongo-pvc
    ReadOnly:   false
  kube-api-access-mqxst:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type     Reason            Age    From               Message
  ----     ------            ----   ----               -------
  Warning  FailedScheduling  5m14s  default-scheduler  0/2 nodes are available: 2 node(s) didn't match PersistentVolume's node affinity. no new claims to deallocate, preemption: 0/2 nodes are available: 2 Preemption is not helpful for scheduling.
  Warning  FailedScheduling  108s   default-scheduler  0/2 nodes are available: 2 node(s) didn't match PersistentVolume's node affinity. no new claims to deallocate, preemption: 0/2 nodes are available: 2 Preemption is not helpful for scheduling.
  Warning  FailedScheduling  60s    default-scheduler  0/2 nodes are available: persistentvolumeclaim "mongo-pvc" not found. not found
  Warning  FailedScheduling  33s    default-scheduler  running PreFilter plugin "VolumeBinding": error getting PVC "default/mongo-pvc": could not find v1.PersistentVolumeClaim "default/mongo-pvc"
  Normal   Scheduled         32s    default-scheduler  Successfully assigned default/mongo-deployment-74896c57f4-vbr7j to ip-192-168-53-168.ap-south-1.compute.internal
  Normal   Pulling           32s    kubelet            Pulling image "mongo"
  Normal   Pulled            31s    kubelet            Successfully pulled image "mongo" in 1.139s (1.139s including waiting). Image size: 336171973 bytes.
  Normal   Created           31s    kubelet            Created container: mongo-db
  Normal   Started           31s    kubelet            Started container mongo-db
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
mongo-deployment-74896c57f4-vbr7j    1/1     Running   0          7m9s
webapp-deployment-85bcdbbd4d-9mczx   1/1     Running   0          55m
webapp-deployment-85bcdbbd4d-bzngj   1/1     Running   0          55m
webapp-deployment-85bcdbbd4d-gt6g7   1/1     Running   0          55m
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl delete pod mongo-deployment-74896c57f4-vbr7j
pod "mongo-deployment-74896c57f4-vbr7j" deleted
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
mongo-deployment-74896c57f4-64fpw    1/1     Running   0          7s
webapp-deployment-85bcdbbd4d-9mczx   1/1     Running   0          55m
webapp-deployment-85bcdbbd4d-bzngj   1/1     Running   0          55m
webapp-deployment-85bcdbbd4d-gt6g7   1/1     Running   0          55m
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# history
    1  cd /
    2  aws s3 ls
    3  aws configure
    4  clear
    5  curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
    6  sudo mv /tmp/eksctl /usr/local/bin
    7  eksctl version
    8  curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
    9  chmod +x ./kubectl
   10  sudo mv ./kubectl /usr/local/bin
   11  kubectl version --short --client
   12  eksctl create cluster --name=EKS-16                       --region=ap-south-1                       --zones=ap-south-1a,ap-south-1b                       --without-nodegroup
   13  eksctl create nodegroup --cluster=EKS-16                       --region=ap-south-1                       --name=node2                       --node-type=t3.medium                       --nodes=2                       --nodes-min=2                       --nodes-max=2                       --node-volume-size=20                       --ssh-access                       --ssh-public-key=DevOps                       --managed                       --asg-access                       --external-dns-access                       --full-ecr-access                       --appmesh-access                       --alb-ingress-access
   14  kubectl get pods
   15  kubectl get nodes
   16  yum install git -y > /dev/null
   17  git clone https://github.com/sudhanshuvlog/GFG-Devops43.git
   18  cd GFG-Devops43/K8s/
   19  cd MERN-App-Deployment\(FullStack\)/
   20  pwd
   21  vi mongo-app.yaml 
   22  kubectl apply -f secret.yaml 
   23  kubectl apply -f mongo-app.yaml 
   24  kubectl apply -f mongo-service.yaml 
   25  kubectl get svc
   26  kubectl apply -f mongo-config.yaml 
   27  ls
   28  kubectl apply -f express-webapp.yaml 
   29  kubectl apply -f webappservice.yaml 
   30  kubectl get pods
   31  kubectl get svc
   32  kubectl describe pod mongo-deployment-b6c557fc9-r88ld
   33  kubectl get notes
   34  kubectl get nodes
   35  kubectl describe pod webapp-deployment-85bcdbbd4d-9mczx
   36  kubectl get node
   37  kubectl get pods
   38  kubectl get svc
   39  vi pv.yaml
   40  kubectl apply -f pv.yaml 
   41  vi pv.yaml
   42  kubectl apply -f pv.yaml 
   43  vi pv.yaml
   44  kubectl apply -f pv.yaml 
   45  kubectl get pv
   46  vi pvc.yaml
   47  cat pv.yaml 
   48  kubectl apply -f pvc.yaml 
   49  vi pvc.yaml
   50  kubectl apply -f pvc.yaml 
   51  kubectl get  pvc
   52  kubectl get pv
   53  vi mongo-app.yaml 
   54  kubectl apply -f mongo-app.yaml 
   55  vi mongo-app.yaml 
   56  kubectl apply -f mongo-app.yaml 
   57  kubectl get pods
   58  kubectl get pods
   59  vi mongo-app.yaml 
   60  kubectl apply -f mongo-app.yaml 
   61  kubectl get pods
   62  kubectl describe pod mongo-deployment-74896c57f4-vbr7j
   63  vi pv.yaml 
   64  kubectl apply -f pv.yaml 
   65  vi pv.yaml 
   66  kubectl apply -f pv.yaml 
   67  kubectl delete pv mongo-pv
   68  kubectl delete pvc mongo-pvc
   69  kubectl delete pv mongo-pv
   70  kubectl apply -f mongo-pv
   71  kubectl apply -f pv.yaml 
   72  kubectl apply -f pvc.yaml 
   73  kubectl get pv
   74  kubectl get pods
   75  kubectl describe pod mongo-deployment-74896c57f4-vbr7j
   76  kubectl get pods
   77  kubectl delete pod mongo-deployment-74896c57f4-vbr7j
   78  kubectl get pods
   79  history
[root@ip-172-31-33-244 MERN-App-Deployment(FullStack)]# 