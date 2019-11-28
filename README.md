# Usage

Copy file `env.dist` to a new file `env` and fill with your info.

## With Docker-Compose

```
$ docker-compose up
```

## With Docker

```
$ docker build -t mongodb-backup .
...
$ docker run -ti --rm --env-file env mongodb-backup
```
