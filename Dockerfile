FROM ubuntu:latest
RUN apt-get update \
  && apt-get install -y --no-install-recommends wget ca-certificates lsb-release \
  && echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -sc)-pgdg main" > /etc/apt/sources.list.d/pgdg.list \
  && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
  && apt-get update
