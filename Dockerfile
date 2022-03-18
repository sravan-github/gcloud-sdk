FROM sravangcpdocker/toolkit-test:2.0
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install python3.8 -y
RUN wget https://storage.googleapis.com/pub/gsutil.tar.gz
RUN tar -xzf gsutil.tar.gz
RUN chmod -R 777 gsutil
RUN cp -rf gsutil /usr/bin

CMD ["/bin/bash","-c","tail -f /dev/null"]
