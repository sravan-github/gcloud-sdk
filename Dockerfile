FROM sravangcpdocker/toolkit-test:2.0
RUN wget https://storage.googleapis.com/pub/gsutil.tar.gz
RUN tar -xvzf gsutil.tar.gz
RUN cp gsutil /usr/bin

CMD ["/bin/bash","-c","tail -f /dev/null"]
