FROM mcr.microsoft.com/powershell:7.0.0-debian-10

RUN apt-get update && apt-get install -y gnupg2
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
RUN echo "deb https://dl.bintray.com/loadimpact/deb stable main" | tee -a /etc/apt/sources.list
RUN apt-get update
RUN apt-get install k6
