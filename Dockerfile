FROM golang

ENV PORT=8080

LABEL io.k8s.description="Platform for building golang applications with GO111 modules"
      io.k8s.display-name="Acomodeo golang S2I builder 1.0"
      io.openshift.expose-services="$PORT:http"
      io.openshift.tags="builder,go,golang,microservices,modules"

LABEL io.openshift.s2i.scripts-url=image:///usr/local/s2i/bin
COPY s2i /usr/local/s2i

EXPOSE $PORT
