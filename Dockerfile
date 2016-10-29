FROM ungleich/cdist

MAINTAINER Carlos Ortigoza "carlos.ortigoza@ungleich.ch"

WORKDIR /root

RUN cd cdist && \
	git checkout -b feature/trigger origin/feature/trigger

EXPOSE 3000/tcp

ENTRYPOINT ["cdist/bin/cdist", "trigger"]
CMD ["--enable-beta", "--http-port", "3000", "-v"]
