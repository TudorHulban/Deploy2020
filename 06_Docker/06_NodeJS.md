Dockerfile for nodejs install:

```bash
FROM electronuserland/builder:latest

# xenial with node and git
RUN cat /etc/*release
RUN node -v
RUN npm -v
RUN git --version

# with grunt
RUN npm install -g grunt grunt-cli
RUN grunt -version
```
