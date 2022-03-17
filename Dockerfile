FROM ubuntu:18.04
RUN apt-get update \
     && apt-get install -y openjdk-11-jdk \
        curl \
        git \
        net-tools \
        iputils-ping \
        wget \
        python \
        unzip \
        ansible \
        python-pip \
        jq
RUN pip install requests google-auth
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
    apt-get update && sudo apt-get install google-cloud-cli \
    apt-get install google-cloud-cli-app-engine-java

CMD ["/bin/bash","-c","tail -f /dev/null"]
