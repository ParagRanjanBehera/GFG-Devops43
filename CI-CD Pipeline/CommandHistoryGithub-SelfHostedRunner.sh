   ,     #_
   ~\_  ####_        Amazon Linux 2023
  ~~  \_#####\
  ~~     \###|
  ~~       \#/ ___   https://aws.amazon.com/linux/amazon-linux-2023
   ~~       V~' '->
    ~~~         /
      ~~._.   _/
         _/ _/
       _/m/'
[ec2-user@ip-172-31-43-98 ~]$ sudo su root
[root@ip-172-31-43-98 ec2-user]# cd /
[root@ip-172-31-43-98 /]# 
[root@ip-172-31-43-98 /]# mkdir actions-runner && cd actions-runner
[root@ip-172-31-43-98 actions-runner]# ls
[root@ip-172-31-43-98 actions-runner]# pwd
/actions-runner
[root@ip-172-31-43-98 actions-runner]# curl -o actions-runner-linux-x64-2.334.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.334.0/actions-runner-linux-x64-2.334.0.tar.gz
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0   0     0   0     0     0     0  --:--:-- --:--:-- --:--:--     0
100 214.5M 100 214.5M   0     0 103.6M     0   0:00:02  0:00:02 --:--:-- 114.0M
[root@ip-172-31-43-98 actions-runner]# ls
actions-runner-linux-x64-2.334.0.tar.gz
[root@ip-172-31-43-98 actions-runner]# tar xzf ./actions-runner-linux-x64-2.334.0.tar.gz
[root@ip-172-31-43-98 actions-runner]# ls
actions-runner-linux-x64-2.334.0.tar.gz  bin  config.sh  env.sh  externals  run-helper.cmd.template  run-helper.sh.template  run.sh  safe_sleep.sh
[root@ip-172-31-43-98 actions-runner]# 
[root@ip-172-31-43-98 actions-runner]# 
[root@ip-172-31-43-98 actions-runner]# ./config.sh --url https://github.com/sudhanshuvlog/GFG43-Python-FlaskApp --token ANYTRLWBZNYS4PCYMT5PXFTJ5XDJG
Must not run with sudo
[root@ip-172-31-43-98 actions-runner]# useradd worker
[root@ip-172-31-43-98 actions-runner]# su worker
[worker@ip-172-31-43-98 actions-runner]$ id
uid=1001(worker) gid=1001(worker) groups=1001(worker) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
[worker@ip-172-31-43-98 actions-runner]$ ./config.sh --url https://github.com/sudhanshuvlog/GFG43-Python-FlaskApp --token ANYTRLWBZNYS4PCYMT5PXFTJ5XDJG
Libicu's dependencies is missing for Dotnet Core 6.0
Execute sudo ./bin/installdependencies.sh to install any missing Dotnet Core 6.0 dependencies.
[worker@ip-172-31-43-98 actions-runner]$ ls
actions-runner-linux-x64-2.334.0.tar.gz  bin  config.sh  env.sh  externals  run-helper.cmd.template  run-helper.sh.template  run.sh  safe_sleep.sh
[worker@ip-172-31-43-98 actions-runner]$ exit
exit
[root@ip-172-31-43-98 actions-runner]# ./bin/installdependencies.sh
--------OS Information--------
NAME="Amazon Linux"
VERSION="2023"
ID="amzn"
ID_LIKE="fedora"
VERSION_ID="2023"
PLATFORM_ID="platform:al2023"
PRETTY_NAME="Amazon Linux 2023.11.20260413"
ANSI_COLOR="0;33"
CPE_NAME="cpe:2.3:o:amazon:amazon_linux:2023"
HOME_URL="https://aws.amazon.com/linux/amazon-linux-2023/"
DOCUMENTATION_URL="https://docs.aws.amazon.com/linux/"
SUPPORT_URL="https://aws.amazon.com/premiumsupport/"
BUG_REPORT_URL="https://github.com/amazonlinux/amazon-linux-2023"
VENDOR_NAME="AWS"
VENDOR_URL="https://aws.amazon.com/"
SUPPORT_END="2029-06-30"
------------------------------
"fedora"
Can't detect current OS type based on /etc/os-release.
Can't install dotnet core dependencies.
You can manually install all required dependencies based on following documentation
https://docs.microsoft.com/en-us/dotnet/core/linux-prerequisites?tabs=netcore2x
[root@ip-172-31-43-98 actions-runner]# yum install dotnet-sdk-10.0
Amazon Linux 2023 Kernel Livepatch repository                                                                                                              253 kB/s |  31 kB     00:00    
Dependencies resolved.
===========================================================================================================================================================================================
 Package                                                  Architecture                     Version                                             Repository                             Size
===========================================================================================================================================================================================
Installing:
 dotnet-sdk-10.0                                          x86_64                           10.0.105-1.amzn2023.0.2                             amazonlinux                            96 M
Installing dependencies:
 aspnetcore-runtime-10.0                                  x86_64                           10.0.5-1.amzn2023.0.2                               amazonlinux                           8.0 M
 aspnetcore-targeting-pack-10.0                           x86_64                           10.0.5-1.amzn2023.0.2                               amazonlinux                           3.4 M
 dotnet-apphost-pack-10.0                                 x86_64                           10.0.5-1.amzn2023.0.2                               amazonlinux                           3.8 M
 dotnet-host                                              x86_64                           10.0.5-1.amzn2023.0.2                               amazonlinux                           220 k
 dotnet-hostfxr-10.0                                      x86_64                           10.0.5-1.amzn2023.0.2                               amazonlinux                           159 k
 dotnet-runtime-10.0                                      x86_64                           10.0.5-1.amzn2023.0.2                               amazonlinux                            25 M
 dotnet-targeting-pack-10.0                               x86_64                           10.0.5-1.amzn2023.0.2                               amazonlinux                           3.1 M
 dotnet-templates-10.0                                    x86_64                           10.0.105-1.amzn2023.0.2                             amazonlinux                           2.7 M
 libbrotli                                                x86_64                           1.0.9-4.amzn2023.0.2                                amazonlinux                           315 k
 libicu                                                   x86_64                           67.1-7.amzn2023.0.4                                 amazonlinux                           9.6 M

Transaction Summary
===========================================================================================================================================================================================
Install  11 Packages

Total download size: 152 M
Installed size: 565 M
Is this ok [y/N]: y
Downloading Packages:
(1/11): dotnet-apphost-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64.rpm                                                                                           30 MB/s | 3.8 MB     00:00    
(2/11): aspnetcore-targeting-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64.rpm                                                                                     21 MB/s | 3.4 MB     00:00    
(3/11): aspnetcore-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64.rpm                                                                                            38 MB/s | 8.0 MB     00:00    
(4/11): dotnet-host-10.0.5-1.amzn2023.0.2.x86_64.rpm                                                                                                       2.4 MB/s | 220 kB     00:00    
(5/11): dotnet-hostfxr-10.0-10.0.5-1.amzn2023.0.2.x86_64.rpm                                                                                               2.3 MB/s | 159 kB     00:00    
(6/11): dotnet-targeting-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64.rpm                                                                                         33 MB/s | 3.1 MB     00:00    
(7/11): dotnet-templates-10.0-10.0.105-1.amzn2023.0.2.x86_64.rpm                                                                                            21 MB/s | 2.7 MB     00:00    
(8/11): libbrotli-1.0.9-4.amzn2023.0.2.x86_64.rpm                                                                                                           10 MB/s | 315 kB     00:00    
(9/11): dotnet-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64.rpm                                                                                                40 MB/s |  25 MB     00:00    
(10/11): libicu-67.1-7.amzn2023.0.4.x86_64.rpm                                                                                                              24 MB/s | 9.6 MB     00:00    
(11/11): dotnet-sdk-10.0-10.0.105-1.amzn2023.0.2.x86_64.rpm                                                                                                 47 MB/s |  96 MB     00:02    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                       66 MB/s | 152 MB     00:02     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                                   1/1 
  Installing       : dotnet-host-10.0.5-1.amzn2023.0.2.x86_64                                                                                                                         1/11 
  Installing       : libbrotli-1.0.9-4.amzn2023.0.2.x86_64                                                                                                                            2/11 
  Installing       : dotnet-apphost-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                            3/11 
  Installing       : aspnetcore-targeting-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                      4/11 
  Installing       : dotnet-hostfxr-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                                 5/11 
  Installing       : dotnet-targeting-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                          6/11 
  Installing       : dotnet-templates-10.0-10.0.105-1.amzn2023.0.2.x86_64                                                                                                             7/11 
  Installing       : libicu-67.1-7.amzn2023.0.4.x86_64                                                                                                                                8/11 
  Installing       : dotnet-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                                 9/11 
  Installing       : aspnetcore-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                            10/11 
  Installing       : dotnet-sdk-10.0-10.0.105-1.amzn2023.0.2.x86_64                                                                                                                  11/11 
  Running scriptlet: dotnet-sdk-10.0-10.0.105-1.amzn2023.0.2.x86_64                                                                                                                  11/11 
  Verifying        : aspnetcore-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                             1/11 
  Verifying        : aspnetcore-targeting-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                      2/11 
  Verifying        : dotnet-apphost-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                            3/11 
  Verifying        : dotnet-host-10.0.5-1.amzn2023.0.2.x86_64                                                                                                                         4/11 
  Verifying        : dotnet-hostfxr-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                                 5/11 
  Verifying        : dotnet-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                                 6/11 
  Verifying        : dotnet-sdk-10.0-10.0.105-1.amzn2023.0.2.x86_64                                                                                                                   7/11 
  Verifying        : dotnet-targeting-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64                                                                                                          8/11 
  Verifying        : dotnet-templates-10.0-10.0.105-1.amzn2023.0.2.x86_64                                                                                                             9/11 
  Verifying        : libbrotli-1.0.9-4.amzn2023.0.2.x86_64                                                                                                                           10/11 
  Verifying        : libicu-67.1-7.amzn2023.0.4.x86_64                                                                                                                               11/11 

Installed:
  aspnetcore-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64       aspnetcore-targeting-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64       dotnet-apphost-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64      
  dotnet-host-10.0.5-1.amzn2023.0.2.x86_64                   dotnet-hostfxr-10.0-10.0.5-1.amzn2023.0.2.x86_64                  dotnet-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64           
  dotnet-sdk-10.0-10.0.105-1.amzn2023.0.2.x86_64             dotnet-targeting-pack-10.0-10.0.5-1.amzn2023.0.2.x86_64           dotnet-templates-10.0-10.0.105-1.amzn2023.0.2.x86_64       
  libbrotli-1.0.9-4.amzn2023.0.2.x86_64                      libicu-67.1-7.amzn2023.0.4.x86_64                                

Complete!
[root@ip-172-31-43-98 actions-runner]# yum install aspnetcore-runtime-10.0 -y
Last metadata expiration check: 0:00:52 ago on Sun Apr 26 07:11:27 2026.
Package aspnetcore-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
[root@ip-172-31-43-98 actions-runner]# yum install install dotnet-runtime-10.0 -y
Last metadata expiration check: 0:01:08 ago on Sun Apr 26 07:11:27 2026.
No match for argument: install
Package dotnet-runtime-10.0-10.0.5-1.amzn2023.0.2.x86_64 is already installed.
Error: Unable to find a match: install
[root@ip-172-31-43-98 actions-runner]# su worker
[worker@ip-172-31-43-98 actions-runner]$ 
[worker@ip-172-31-43-98 actions-runner]$ 
[worker@ip-172-31-43-98 actions-runner]$ ./config.sh --url https://github.com/sudhanshuvlog/GFG43-Python-FlaskApp --token ANYTRLWBZNYS4PCYMT5PXFTJ5XDJG

--------------------------------------------------------------------------------
|        ____ _ _   _   _       _          _        _   _                      |
|       / ___(_) |_| | | |_   _| |__      / \   ___| |_(_) ___  _ __  ___      |
|      | |  _| | __| |_| | | | | '_ \    / _ \ / __| __| |/ _ \| '_ \/ __|     |
|      | |_| | | |_|  _  | |_| | |_) |  / ___ \ (__| |_| | (_) | | | \__ \     |
|       \____|_|\__|_| |_|\__,_|_.__/  /_/   \_\___|\__|_|\___/|_| |_|___/     |
|                                                                              |
|                       Self-hosted runner registration                        |
|                                                                              |
--------------------------------------------------------------------------------

# Authentication


√ Connected to GitHub

# Runner Registration

Enter the name of the runner group to add this runner to: [press Enter for Default] 

Enter the name of runner: [press Enter for ip-172-31-43-98] gfg-runner1

This runner will have the following labels: 'self-hosted', 'Linux', 'X64' 
Enter any additional labels (ex. label-1,label-2): [press Enter to skip] 

√ Runner successfully added

# Runner settings

Enter name of work folder: [press Enter for _work] data

√ Settings Saved.

[worker@ip-172-31-43-98 actions-runner]$ ./run.sh 

√ Connected to GitHub

Current runner version: '2.334.0'
2026-04-26 07:15:38Z: Listening for Jobs
2026-04-26 07:17:13Z: Running job: python-tests (3.11)
2026-04-26 07:17:27Z: Job python-tests (3.11) completed with result: Failed
2026-04-26 07:21:28Z: Running job: python-tests (3.11)
2026-04-26 07:21:41Z: Job python-tests (3.11) completed with result: Failed
2026-04-26 07:24:01Z: Running job: python-tests (3.11)
2026-04-26 07:24:15Z: Job python-tests (3.11) completed with result: Failed
2026-04-26 07:24:56Z: Running job: python-tests (3.11)
2026-04-26 07:25:20Z: Job python-tests (3.11) completed with result: Succeeded
2026-04-26 07:26:58Z: Running job: python-tests (3.11)
2026-04-26 07:27:14Z: Job python-tests (3.11) completed with result: Succeeded
2026-04-26 07:27:18Z: Running job: Build and analyze
2026-04-26 07:27:57Z: Job Build and analyze completed with result: Succeeded
2026-04-26 07:28:01Z: Running job: docker-image-build-and-push
2026-04-26 07:28:13Z: Job docker-image-build-and-push completed with result: Failed
2026-04-26 07:31:31Z: Running job: python-tests (3.11)
2026-04-26 07:31:49Z: Job python-tests (3.11) completed with result: Succeeded
2026-04-26 07:31:52Z: Running job: Build and analyze
2026-04-26 07:32:27Z: Job Build and analyze completed with result: Succeeded
2026-04-26 07:32:30Z: Running job: docker-image-build-and-push
2026-04-26 07:33:33Z: Job docker-image-build-and-push completed with result: Failed
2026-04-26 07:38:50Z: Running job: python-tests (3.11)
2026-04-26 07:39:08Z: Job python-tests (3.11) completed with result: Succeeded
2026-04-26 07:39:11Z: Running job: Build and analyze
2026-04-26 07:39:46Z: Job Build and analyze completed with result: Succeeded
2026-04-26 07:39:49Z: Running job: docker-image-build-and-push
2026-04-26 07:40:05Z: Job docker-image-build-and-push completed with result: Failed
^CExiting...
Runner listener exit with 0 return code, stop the service, no retry needed.
Exiting runner...
[worker@ip-172-31-43-98 actions-runner]$ exit
exit
[root@ip-172-31-43-98 actions-runner]# su worker
[worker@ip-172-31-43-98 actions-runner]$ ./run.sh 

√ Connected to GitHub

^CExiting...
Runner listener exit with 0 return code, stop the service, no retry needed.
Exiting runner...
[worker@ip-172-31-43-98 actions-runner]$ ./run.sh 

√ Connected to GitHub

Current runner version: '2.334.0'
2026-04-26 07:44:46Z: Listening for Jobs
2026-04-26 07:44:49Z: Running job: docker-image-build-and-push
2026-04-26 07:46:03Z: Job docker-image-build-and-push completed with result: Succeeded