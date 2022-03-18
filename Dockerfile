FROM sravangcpdocker/toolkit-test:2.0
RUN apt-get install gcc python-dev python-setuptools libffi-dev
RUN apt-get install python-pip
RUN pip install gsutil

CMD ["/bin/bash","-c","tail -f /dev/null"]
