## Add Google Clocks

sudo apt install gnome-clocks

## Setup SSH

sudo apt-get install openssh-server
sudo cp /etc/ssh/sshd_config ~
sudo vi /etc/ssh/sshd_config
	
	PermitRootLogin no
	AllowUsers nmckenna
	Port 5885

sudo /etc/init.d/ssh restart

## Setup ssh access with 2fa

# 1. Install the Google Authenticator module

sudo apt install libpam-google-authenticator

# 2. Run the google authenticator command to create a new secret key in the home directory

google-authenticator

# 3. Do you want authentication tokens to be time based - y Then scan the QR code using the google authenticator app or Authy or whatever

# 4. Answer Y to all the further questions the authenticator asks.

# 5. Configure the SSH Daemon to use Google Authenticator

sudo vi /etc/ssh/sshd_config

# Set the following value in the above file: UsePAM yes
# Set the following value in the above file: ChallengeResponseAuthentication yes

# 6. Enable Challenge-Response authentication

sudo systemctl restart ssh

# 7. add the following two lines to the file

sudo vi /etc/pam.d/sshd

#One-time password authentication via Google Authenticator
auth required pam_google_authenticator.so

## Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb


## Libraries required for Firestorm

sudo apt install libgtk2.0-0:i386 libpangox-1.0-0:i386 libpangoxft-1.0-0:i386 libidn11:i386 libglu1-mesa:i386  

sudo apt install lsb-core 

## Editor Setup

sudo snap install --classic code # or code-insiders
sudo apt remove --assume-yes vim-tiny
sudo apt update
sudo apt install --assume-yes vim

## SCM Setup
sudo apt install git

## Configure Git

git config --global user.name "Nicol McKenna"
git config --global user.email "nicol.mckenna@gmail."
