Example Dockerfile for TwoBirds JS.

```bash
FROM electronuserland/builder:latest

# verifications
RUN cat /etc/*release
RUN node -v
RUN npm -v
RUN git --version

RUN git clone https://gitlab.com/twoBirds/twobirds-core.git
WORKDIR twobirds-core

RUN npm install -g grunt grunt-cli
RUN grunt -version

RUN npm install
RUN grunt

WORKDIR dist/tb
RUN ls -1 | awk -vpath=$PWD/ '{print path$1}'
```
