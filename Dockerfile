FROM sravangcpdocker/toolkit-test:2.0
RUN wget https://storage.googleapis.com/pub/gsutil.tar.gz
RUN tar gsutil.tar.gz
RUN cp ./gsutil/gsutil /usr/bin

CMD ["/bin/bash","-c","tail -f /dev/null"]
