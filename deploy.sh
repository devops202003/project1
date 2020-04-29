sudo ssh -i /opt/keys/aws.pem ec2-user@3.22.88.67 "sudo /opt/tomcat/bin/shutdown.sh"
sudo scp -i /opt/keys/aws.pem webapp/target/webapp.war ec2-user@3.22.88.67:/tmp/
sudo ssh -i /opt/keys/aws.pem ec2-user@3.22.88.67 "sudo cp /tmp/webapp.war /opt/tomcat/webapps/"
sudo ssh -i /opt/keys/aws.pem ec2-user@3.22.88.67 "sudo /opt/tomcat/bin/startup.sh"
