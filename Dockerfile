FROM ubuntu:22.04
MAINTAINER divesha@spc.int
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update 
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -y install build-essential g++ gfortran mpich gcc python3-dev python3-pip virtualenv wget zlib1g-dev vim htop libnetcdf-dev libnetcdff-dev bzip2 cmake cpio curl git gosu libblas-dev liblapack-dev libmpich-dev 

CMD [ "/bin/bash" ]