FROM ubuntu
 
RUN apt-get update && apt-get -y upgrade

RUN apt install -y build-essential clang flex bison g++ gawk  \
	gcc-multilib g++-multilib gettext git libncurses5-dev libssl-dev \
	python3-setuptools rsync swig unzip zlib1g-dev file wget \
        fish openssh-server systemd curl sudo vim qemu-utils

RUN useradd openwrt -m -s /bin/fish

RUN systemctl enable ssh
 
CMD ["/bin/systemd"]
