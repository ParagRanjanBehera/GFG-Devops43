[root@ip-172-31-45-122 ansible-gfg]# history
    1  cd /
    2  yum install ansible
    3  mkdir ansible-gfg
    4  cd ansible-gfg/
    5  ansible --version
    6  vi key.pem
    7  vi inventory
    8  cat inventory 
    9  ansible all -m ping
   10  ls
   11  pwd
   12  ansible-config init --disabled > ansible.cfg
   13  ls
   14  ansible --version
   15  vi ansible.cfg 
   16  ansible all -m ping
   17  vi ansible.cfg 
   18  ansible all -m ping
   19  ls
   20  ls -l key.pem 
   21  chmod 400 key.pem 
   22  ls -l key.pem 
   23  ansible all -m ping
   24  ansible all -m command -a "date"
   25  ansible all -m command -a "yum install httpd"
   26  ansible all -m command -a "id"
   27  cat inventory 
   28  ansible all -m command -a "sudo yum install httpd -y"
   29  rpm -q httpd
   30  ansible all -m command -a "yum install ngix -y"
   31  vi ansible.cfg 
   32  ansible all -m command -a "yum install nginx -y"
   33  vi httpd-server-configuration.yaml
   34  cat key.pem 
   35  cat inventory 
   36  history
   37  vi httpd-server-configuration.yaml
   38  ansible-playbook httpd-server-configuration.yaml 
   39  vi httpd-server-configuration.yaml
   40  ansible-playbook httpd-server-configuration.yaml 
   41  vi httpd-server-configuration.yaml
   42  vi index.html
   43  vi httpd-server-configuration.yaml
   44  ansible-playbook httpd-server-configuration.yaml 
   45  vi httpd-server-configuration.yaml
   46  ansible-playbook httpd-server-configuration.yaml 
   47  ansible-playbook httpd-server-configuration.yaml 
   48  vi httpd-server-configuration.yaml
   49  ansible-playbook httpd-server-configuration.yaml 
   50  vi httpd-server-configuration.yaml
   51  ansible-playbook httpd-server-configuration.yaml 
   52  vi httpd-server-configuration.yaml
   53  ansible-playbook httpd-server-configuration.yaml 
   54  vi httpd-server-configuration.yaml
   55  yum install httpd -y
   56  cp /etc/httpd/conf/httpd.conf  .
   57  pwd
   58  yum remove httpd -y
   59  ls
   60  vi httpd-server-configuration.yaml 
   61  ansible-playbook httpd-server-configuration.yaml 
   62  vi httpd.conf 
   63  ansible-playbook httpd-server-configuration.yaml 
   64  vi httpd.conf 
   65  vi httpd-server-configuration.yaml 
   66  ansible-playbook httpd-server-configuration.yaml 
   67  ansible-playbook httpd-server-configuration.yaml 
   68  vi httpd-server-configuration.yaml 
   69  vi httpd-server-configuration.yaml 
   70  ansible-playbook httpd-server-configuration.yaml 
   71  vi httpd-server-configuration.yaml 
   72  ansible-playbook httpd-server-configuration.yaml 
   73  vi httpd.conf 
   74  ansible-playbook httpd-server-configuration.yaml 
   75  vi httpd-server-configuration.yaml 
   76  ansible-playbook httpd-server-configuration.yaml 
   77  vi httpd.conf 
   78  ansible-playbook httpd-server-configuration.yaml 
   79  ansible-playbook httpd-server-configuration.yaml 
   80  ansible-playbook httpd-server-configuration.yaml 
   81  vi httpd-server-configuration.yaml 
   82  ansible-playbook httpd-server-configuration.yaml 
   83  ansible-playbook httpd-server-configuration.yaml -t package
   84  vi httpd-server-configuration.yaml 
   85  ansible-playbook httpd-server-configuration.yaml -t copy
   86  ansible-playbook httpd-server-configuration.yaml 
   87  vi index.html 
   88  ansible-playbook httpd-server-configuration.yaml -t copy
   89  vi create-user.yaml
   90  ansible-playbook create-user.yaml 
   91  vi create-user.yaml
   92  ansible-playbook create-user.yaml 
   93  vi create-ec2.yaml
   94  cat create-ec2.yaml 
   95  vi create-ec2.yaml
   96  ansible-vault
   97  ansible-vault create aws_credentials.yaml
   98  ls
   99  cat aws_credentials.yaml 
  100  vi create-ec2.yaml 
  101  ansible-playbook create-
  102  ansible-playbook create-ec2.yaml 
  103  ansible-playbook --help
  104  ansible-playbook create-ec2.yaml  --ask-vault-password
  105  ansible-playbook create-ec2.yaml  --ask-vault-password
  106  cat aws_credentials.yaml 
  107  ansible-vault --help
  108  ansible-vault view aws_credentials.yaml 
  109  cat aws_credentials.yaml 
  110  ansible-vault edit  aws_credentials.yaml 
  111  cat inventory 
  112  vi create-ec2.yaml 
  113  vi create-ec2.yaml 
  114  ls -l
  115  ls  -l -a
  116  vi create-ec2.yaml
  117  vi create-ec2.yaml
  118  ansible-playbook create-ec2.yaml  --ask-vault-password
  119  vi create-ec2.yaml
  120  ansible-playbook create-ec2.yaml  --ask-vault-password
  121  vi create-ec2.yaml
  122  ansible-playbook create-ec2.yaml  --ask-vault-password
  123  vi create-ec2.yaml
  124  vi create-ec2.yaml
  125  ansible-playbook create-ec2.yaml  --ask-vault-password
  126  vi create-ec2.yaml
  127  vi create-ec2.yaml
  128  ansible-playbook create-ec2.yaml  --ask-vault-password
  129  vi create-ec2.yaml
  130  ansible-playbook create-ec2.yaml  --ask-vault-password
  131  vi create-ec2.yaml
  132  ansible-playbook create-ec2.yaml  --ask-vault-password
  133  cat inventory 
  134  vi inventory.j2
  135  vi inventory.j2
  136  cat inventory.j2 
  137  vi create-ec2.yaml 
  138  cat inventory
  139  ansible-playbook create-ec2.yaml  --ask-vault-password
  140  cat inventory.j2 
  141  cat inventory
  142  vi inventory.j2 
  143  ansible-playbook create-ec2.yaml  --ask-vault-password
  144  cat inventory
  145  cat inventory.j2 
  146  vi httpd-server-configuration.yaml 
  147  ansible-playbook httpd-server-configuration.yaml 
  148  ansible-playbook create-user.yaml 
  149  ansible-playbook create-user.yaml 
  150  ansible-playbook create-ec2.yaml  --ask-vault-password
  151  cat inventory
  152  ansible-playbook create-user.yaml 
  153  history