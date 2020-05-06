FROM	openjdk:8

LABEL	maintainer="Stefano Ghignone, IPSP-CNR, Turin, Italy, stefano.ghignone[at]ipsp.cnr.it"
LABEL	name="CANU"
LABEL	version="2.0 (released 2020-03-18)" 

ENV	 PATH=/usr/local/bin:$PATH

RUN	apt update && apt -y upgrade \
	&& apt install -y build-essential wget gnuplot

RUN	LC_ALL="C.UTF-8"
RUN	LANG="C.UTF-8"

	#INSTALL CANU
ENV	TAG="2.0"
ENV	URL="https://github.com/marbl/canu/releases/download/v${TAG}/canu-${TAG}.Linux-amd64.tar.xz"
RUN	wget -c "$URL" -O - | tar -xJf -
RUN	cd "canu-${TAG}/Linux-amd64" || exit 1

RUN	ls -lah 

RUN	cp -a canu-${TAG}/Linux-amd64/bin/* /usr/local/bin/
RUN	cp -a canu-${TAG}/Linux-amd64/lib/* /usr/local/lib/
RUN	cp -a canu-${TAG}/Linux-amd64/share/* /usr/local/share/

RUN 	mkdir data
WORKDIR	/data
