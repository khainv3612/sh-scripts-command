#add repo
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update

#jdk8
sudo apt install openjdk-8-jdk

#jdk11
sudo apt-get install oracle-java11-installer-local

#jdk17
sudo apt install oracle-java17-installer


#set JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/foler_save_java
export PATH=$PATH:$JAVA_HOME/bin
source /etc/environment
--->DONE!

#switch jre version
sudo update-alternatives --config java
=> enter the java version number

#switch javac version
sudo update-alternatives --config javac
--->enter version number
