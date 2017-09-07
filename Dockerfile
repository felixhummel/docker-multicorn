# vim:set ft=dockerfile:
# https://www.krenger.ch/blog/sqlplus-on-debian/
FROM postgres:9.6

RUN apt-get update \
	&& apt-get install -y \
     postgresql-server-dev-9.6 \
     python-pip \
     python-dev \
     libaio1 \
     unzip \
  && rm -rf /var/lib/apt/lists/*

# http://pgxnclient.projects.pgfoundry.org/install.html
RUN pip install pgxnclient

# http://multicorn.org/#idid3
RUN pgxn install multicorn

