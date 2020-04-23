Bootstrap: docker
From: openjdk:8-alpine


%labels
	author Stefano Ghignone
	maintainer sghignone
	name CANU
	version 2.0 (released 2020-03-18) 
	 

%post
	apk update && apk upgrade \
	&& apk add --no-cache linux-headers build-base wget \
	perl \
	perl-doc \
	perl-utils \
	perl-dev \
	perl-dbd-pg \
	perl-db_file \
	expat \
	expat-dev \
	libxml2-dev \
	libxslt-dev \

	wget -c https://github.com/marbl/canu/archive/v2.0.tar.gz  -O canu-2.0.tar.gz
	tar -xzf canu-2.0.tar.gz && rm canu-2.0.tar.gz
	ls -lh
	which g++
	g++ --version
	cd canu-2.0/src && make -j8
