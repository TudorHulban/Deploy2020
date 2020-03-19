Dockerfile for PostgreSQL install.

```bash
# pull base image.
FROM ubuntu:18.04

LABEL version="1.0"
LABEL description="postgresql"

RUN apt-get clean

# one per line for docker caching
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install --assume-yes apt-utils

RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
RUN mkdir /home/postgres && chown postgres:postgres /home/postgres
RUN apt-get install -qy postgresql 

ENV PATH $PATH:/usr/lib/postgresql/$PG_MAJOR/bin

EXPOSE 5432
# CMD ["postgres"]
```
