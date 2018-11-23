# Docker images with psql clients

`make all` to make all docker images, or `make psql10` to make postgres 10
client applications available.

Drop the following in your shell's config:

```sh
pg_dump11() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql11:latest /usr/bin/pg_dump "$@"
}
psql11() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql11:latest /usr/bin/psql "$@"
}
pg_restore11() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql11:latest /usr/bin/pg_restore "$@"
}
pg_dump10() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql10:latest /usr/bin/pg_dump "$@"
}
psql10() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql10:latest /usr/bin/psql "$@"
}
pg_restore10() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql10:latest /usr/bin/pg_restore "$@"
}
pg_dump9.6() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql9.6:latest /usr/bin/pg_dump "$@"
}
psql9.6() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql9.6:latest /usr/bin/psql "$@"
}
pg_restore9.6() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql9.6:latest /usr/bin/pg_restore "$@"
}
pg_dump9.5() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql9.5:latest /usr/bin/pg_dump "$@"
}
psql9.5() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql9.5:latest /usr/bin/psql "$@"
}
pg_restore9.5() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql9.5:latest /usr/bin/pg_restore "$@"
}
pg_dump9.4() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql9.4:latest /usr/bin/pg_dump "$@"
}
psql9.4() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql9.4:latest /usr/bin/psql "$@"
}
pg_restore9.4() {
  docker run --rm -tty "$([ -t 0 ] && echo -e --interactive)" psql9.4:latest /usr/bin/pg_restore "$@"
}
```
