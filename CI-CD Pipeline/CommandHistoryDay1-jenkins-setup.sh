   1  cd /
    2  mkdir data
    3  cd data
    4  pwd
    5  ls
    6  cd ..
    7  curl -sO http://3.109.123.14:8080/jnlpJars/agent.jar
    8  ls
    9  java -jar agent.jar -url http://3.109.123.14:8080/ -secret 1769c8bd758e981a83163f2152c71c7daec7f61db2e92f5405d319b0ef97e7d7 -name "ec2-agent1" -webSocket -workDir "/data"
   10  wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.rpm
   11  ls
   12  yum install jdk-21_linux-x64_bin.rpm -y
   13  java -jar agent.jar -url http://3.109.123.14:8080/ -secret 1769c8bd758e981a83163f2152c71c7daec7f61db2e92f5405d319b0ef97e7d7 -name "ec2-agent1" -webSocket -workDir "/data"
   14  java -jar agent.jar -url http://3.109.123.14:8080/ -secret 1769c8bd758e981a83163f2152c71c7daec7f61db2e92f5405d319b0ef97e7d7 -name "ec2-agent1" -webSocket -workDir "/data" 
   15  java -jar agent.jar -url http://3.109.123.14:8080/ -secret 1769c8bd758e981a83163f2152c71c7daec7f61db2e92f5405d319b0ef97e7d7 -name "ec2-agent1" -webSocket -workDir "/data" &
   16  date
   17  ps -aux | grep java
   18  cd /
   19  rpm -q httpd
   20  cd /
   21  yum install git -y
   22  cd data
   23  pwd
   24  ls
   25  cd workspace/
   26  ls
   27  cd job1/
   28  ls
   29  pwd
   30  docker
   31  cd ..
   32  ls
   33  cd job2
   34  ls
   35  docker images
   36  docker ps
   37  git log --oneline
   38  history