FROM openjdk:18-slim AS builder

RUN apt-get update && apt-get -y install wget bzip2 make
RUN wget http://repo.hu/projects/freerouting_cli/releases/freerouting_cli-1.tar.bz2
RUN tar xjf freerouting_cli-1.tar.bz2
WORKDIR freerouting_cli-1
RUN make

FROM openjdk:18
COPY --from=builder /freerouting_cli-1/build/obj/freerouting_cli.jar /opt/freerouting_cli.jar
