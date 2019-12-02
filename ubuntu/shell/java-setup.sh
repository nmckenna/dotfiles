## Language Setup

sudo apt update
sudo apt -y upgrade

sudo apt install default-jdk

## Edit /etc/environment file using sudo
## Add the following to the bottom of the file
## Note: This is for Open JDK 11

JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

## To test source the /etc/environment file


## Installing Maven

sudo apt update
sudo apt install maven

## Test with mvn -version
