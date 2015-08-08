FROM registry.access.redhat.com/rhel 

RUN	yum install tar java -y && \
	useradd elasticsearch && \
	cd /opt && \
	curl -s https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.0.tar.gz | tar xzvf - && \
	chown elasticsearch /opt/elasticsearch-1.7.0

USER elasticsearch

EXPOSE 9200 9300

CMD /opt/elasticsearch-1.7.0/bin/elasticsearch
