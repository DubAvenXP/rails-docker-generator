# Rails projects generator using Docker

This is a simple way to generate a Rails project using Docker.

## Requirements

You need to have Docker installed on your machine.

## Usage

```bash
$ docker-compose run --no-deps web rails new . --force --database=postgresql
```

```bash
$ docker-compose build
```

```bash
$ docker-compose up
```

```bash
$ docker-compose run web rake db:create
```

```bash
$ docker-compose run web rake db:migrate
```

# Tips

* If you want to use a different database, you can change the `database` option in the `docker-compose.yaml` file.
* If you want to use a different Ruby version, you can change the `image` option in the `docker-compose.yaml` file and also the version in the `Gemfile`.
* If you want to use a different Rails version, you can change the version in the `Gemfile`.

## Files

* Dockerfile: Defines the image to be used to build the container.

* docker-compose.yml: Defines the services to be used to build the container.

* Gemfile: With the gems to be used in the project.

* Gemfile.lock: Defines the gems to be used in the project.

* entrypoint.sh: Defines the commands to be executed when the container is started.

* .dockerignore: Defines the files to be ignored when building the container.

# Contributing

Bug reports and pull requests are welcome on GitHub at