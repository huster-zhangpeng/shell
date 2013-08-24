# example : install jdk1.7.0_25(32bit)
# download jdk-7u25-linux-i586.tar.gz

# uncompress the file
tar -xzvf jdk-7u25-linux-i586.tar.gz

# move the JDK 7 directory to /usr/lib
sudo mkdir -p /usr/lib/jvm  #just in case
sudo mv ./jdk.1.7.0_25 /usr/lib/jvm/

# now run
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0_25/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0_25/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.7.0_25/bin/javaws" 1

# correct the file ownership and the permissions of the executables:
sudo chmod a+x /usr/bin/java 
sudo chmod a+x /usr/bin/javac 
sudo chmod a+x /usr/bin/javaws
sudo chown -R root:root /usr/lib/jvm/jdk1.7.0_25

# update sys java config, and choose the number of jdk1.7.0_25
sudo update-alternatives --config java

# repeat the above for:
sudo update-alternatives --config javac
sudo update-alternatives --config javaws

# check the version
java -version
