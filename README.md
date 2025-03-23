export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.25.0.9-3.el9.x86_64/
export MAVEN_HOME=/opt/apache-maven-3.9.6
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin





export PATH=$PATH:


/usr/lib/jvm/java-11-openjdk-11.0.25.0.9-3.el9.x86_64/bin/java


$ 
scp -i preethi_key.pem apache-tomcat-9.0.102-windows-x64.zip ubuntu@ec2-13-51-162-225.eu-north-1.compute.amazonaws.com:/home/ubuntu/



Install Java


sudo apt update && sudo apt upgrade -y

sudo apt install openjdk-17-jdk -y


which java

tomcat have to settup - you have to add (secutity group )port 8080 in to AWS - instance 

Security group : add ports as many 

download jenkins.war file in to tomcat webapps folder - 
once you start tomcat then you can be access your jenkins


t3.medium:




java:
sudo yum install java-17-openjdk
sudo update-alternatives --config java

Download Maven and setup ENV:
wget maven bin file from maven site:

Tomcat:
Download tomcat and change file permission for bin folder 
chmod -R 777 bin 

Setup ENV: vi /etc/bashrc
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-17.0.14.0.7-2.el9.x86_64
export MAVEN_HOME=/opt/apache-maven-3.9.6
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin


tomcat - server start 

sh /opt/tomacat-10/bin/startup.sh
sh /opt/tomacat-10/bin/shutdown.sh



jenkins practice

1.first need to create new instance in the AWS.
2.login into the instance by using the SSH key which available in the instance.

3.get into the root by using the 'sudo su'

4.install prerequiries
   # yum install httpd -y
   # systemctl status httpd = To check the service status whether it's active/inactive 
   # systemctl start httpd  = If the service is in inactive ..just start the service 
   # systemctl enable httpd` = Enables the service to automatically start whenever the instance is stopped and restarted. If the service is enabled, it will automatically transition to an active state upon instance reboot.
5. Java
  sudo apt update && sudo apt upgrade -y
  sudo yum install java-17-openjdk
  sudo update-alternatives --config java




  
ENV-setup : vi /etc/bashrc
  export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-17.0.14.0.7-2.el9.x86_64/
  export MAVEN_HOME=/opt/apache-maven-3.9.6
  export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin
after setup evn: to refresh teh bashrc file
# source /etc/bashrc


6. Maven
Download-> maven.site

wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
tar -xvzf apache-maven-3.9.6-bin.tar.gz


7. Tomcat
Download standloan tomcat 
wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.1.18/bin/apache-tomcat-10.1.18.tar.gz
tar -xvzf apache-tomcat-10.1.18.tar.gz

change file permissions for bin files: get in to tomcat bin folder  
chmod -R 777 *
set the AWS secutity group for tomcat for port number 8080 . then you can access your tomcat 

start & stop the tomcat service. Get in to the tomcat bin #Linux-> server use these executeble file for  ( sh startup.sh ) & (sh shutdown.sh)

8. Jenkins
download the jenkins.war file into tomcat webapps folder 
wget https://updates.jenkins.io/download/war/2.492.2/jenkins.war

restart the tomcat service using ( sh startup.sh ) & (sh shutdown.sh)





















+++++=================================================================================
==========================================================================================

Here’s a well-structured and clearer version of your **Jenkins Practice** guide:  

---

# **Jenkins Practice Guide**

## **1. Create a New AWS Instance**
- Launch a new AWS EC2 instance.
- Choose an appropriate OS (Amazon Linux, Ubuntu, RHEL, etc.).
- Configure security groups to allow necessary ports (22 for SSH, 80 for HTTP, 8080 for Tomcat, etc.).
- Attach an SSH key for secure access.

## **2. Connect to the Instance**
Use SSH to log in to your instance:
```sh
ssh -i your-key.pem ec2-user@your-instance-ip
```
Switch to the root user:
```sh
sudo su
```

---

## **3. Install Prerequisites**
### **Install Apache HTTP Server**
```sh
yum install httpd -y
systemctl status httpd  # Check if the service is active/inactive
systemctl start httpd   # Start service if inactive
systemctl enable httpd  # Enable service to start on boot
```

---

## **4. Install Java**
### **Update and Install OpenJDK 17**
```sh
sudo apt update && sudo apt upgrade -y
sudo apt install openjdk-17-jdk -y


sudo subscription-manager register --auto-attach
sudo yum install java-17-openjdk -y

sudo subscription-manager register --auto-attach
sudo yum install java-17-openjdk -y


```
### **Set Up Java Environment Variables**
Edit the **bashrc** file:
```sh
vi /etc/bashrc
```
Add the following lines:
```sh
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-17.0.14.0.7-2.el9.x86_64/
export MAVEN_HOME=/opt/apache-maven-3.9.6
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin
```
Apply changes:
```sh
source /etc/bashrc
```

---

## **5. Install Maven**
### **Download and Extract Maven**
```sh
wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
tar -xvzf apache-maven-3.9.6-bin.tar.gz
```

---

## **6. Install Tomcat**
### **Download and Extract Tomcat**
```sh
wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.1.18/bin/apache-tomcat-10.1.18.tar.gz
tar -xvzf apache-tomcat-10.1.18.tar.gz
```
### **Set File Permissions**
Navigate to the Tomcat `bin` directory and update permissions:
```sh
cd apache-tomcat-10.1.18/bin
chmod -R 777 *
```
### **Configure AWS Security Group**
- Open **port 8080** in the AWS security group settings to allow Tomcat access.

### **Start & Stop Tomcat**
```sh
sh startup.sh    # Start Tomcat
sh shutdown.sh   # Stop Tomcat
```

---

## **7. Install Jenkins**
### **Download the Jenkins WAR File**
```sh
wget https://updates.jenkins.io/download/war/2.492.2/jenkins.war -P /opt/tomcat/webapps/
```
### **Restart Tomcat to Deploy Jenkins**
```sh
sh shutdown.sh  # Stop Tomcat
sh startup.sh   # Start Tomcat
```

---

## **8. Access Jenkins**
- Open a browser and go to:  
  ```
  http://your-instance-ip:8080/jenkins
  ```
- Follow the on-screen setup instructions.

---

