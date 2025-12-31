FROM docker.io/debian:bookworm

LABEL maintainer="Anoduck, The Anonymous Duck"

WORKDIR /usr/src

# Configure variables for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# Install system and Python dependencies
RUN apt-get update && apt-get install --no-install-recommends -y \
	build-essential automake libtool texinfo bison flex gawk \
	g++ git xxd curl wget gdisk gperf cpio bc screen texinfo unzip libgmp-dev \
	libmpfr-dev libmpc-dev libssl-dev libncurses-dev libglib2.0-dev libpixman-1-dev \
	libyaml-dev patchutils python3-pip zlib1g-dev device-tree-compiler dosfstools \
	mtools kpartx rsync \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

# Download repo keys for git-lfs
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

# Install git-lfs
RUN apt install git-lfs

ENTRYPOINT ["tail", "-f", "/dev/null"]
