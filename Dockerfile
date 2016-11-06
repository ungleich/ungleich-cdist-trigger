FROM ungleich/cdist:beta

MAINTAINER Carlos Ortigoza "carlos.ortigoza@ungleich.ch"

EXPOSE 3000/tcp

ENTRYPOINT ["/root/cdist/bin/cdist", "trigger", "--beta", "-v"]
