FROM jenkins/jenkins:2.426.3-lts-jdk21
USER root
RUN apt-get update && apt-get install -y wget jq vim less net-tools
# USER jenkins
RUN mkdir /var/jenkins_home/.ssh
# RUN chown -R jenkins:jenkins /var/jenkins_home/.ssh/
# ADD --chown=jenkins:jenkins configs/.ssh/id_rsa /var/jenkins_home/.ssh/
ADD --chown=jenkins:jenkins configs/.ssh/id_rsa.pub /var/jenkins_home/.ssh/
ADD --chown=jenkins:jenkins configs/.ssh/config /var/jenkins_home/.ssh/
ADD configs/.ssh/change-permissions.sh /var/jenkins_home/.ssh/
RUN bash /var/jenkins_home/.ssh/change-permissions.sh
# RUN mv /var/jenkins_home/.ssh/id_rsa /tmp/ &&\
#     find /tmp/id_rsa -exec chmod 600 {} \; &&\
#     mv /tmp/id_rsa /var/jenkins_home/.ssh/id_rsa


# RUN chmod +x /var/jenkins_home/.ssh/change-permissions.sh 
# RUN bash /var/jenkins_home/.ssh/change-permissions.sh && rm -rf /var/jenkins_home/.ssh/change-permissions.sh

# RUN chmod 600 /var/jenkins_home/.ssh/id_rsa && \
#     chmod 644 /var/jenkins_home/.ssh/id_rsa.pub 
USER jenkins

COPY configs/*.xml /var/jenkins_home/

COPY configs/plugins.txt /var/jenkins_home/plugins.txt
RUN jenkins-plugin-cli -f /var/jenkins_home/plugins.txt

ADD configs/jenkins-cli.jar /var/jenkins_home/
ADD init.groovy/ /usr/share/jenkins/ref/init.groovy.d/
