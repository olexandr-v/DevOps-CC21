FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt update && \
      apt install -y docker.io sudo gnupg software-properties-common curl && \
      curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
      apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
      apt update && apt install terraform && \
      curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && \
      chmod +x ./kubectl && \
      mv ./kubectl /usr/local/bin/kubectl && \
      curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator && \
      chmod +x ./aws-iam-authenticator && \
      mv ./aws-iam-authenticator /usr/local/bin/ && \
      curl https://baltocdn.com/helm/signing.asc | apt-key add - && \
      apt install apt-transport-https --yes && \
      echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list && \
      apt update && \
      apt install helm -y && \
      rm -rf /var/lib/apt/lists/* && \
      echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
USER jenkins
