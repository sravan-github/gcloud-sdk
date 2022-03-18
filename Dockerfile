FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:latest
RUN apt install curl -y

CMD ["/bin/bash","-c","tail -f /dev/null"]
