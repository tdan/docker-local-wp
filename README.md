# Docker Local WP

Docker Compose file to spin up a local WordPress installation in a heart beat.

## Running Commands with Docker Compose

### Starting Wordpress Docker instance

Make sure Docker daemon is running.

To start a WordPress instance & services, run:

```
$ docker compose up -d
```

To access Wordpress, go to http://0.0.0.0:18765 on browser.
To access PHPMyAdmin, visit http://0.0.0.0:18767.

### Stopping WordPress instance & services

To stop running instance & services:

```
$ docker compose down
```

### Run wp-cli commands

We don’t need to run wpcli as a service — only one at a time when we need to issue a command:

```
$ docker compose run --rm wpcli [--WPCLI OPTIONS] 
```

--rm, as an argument, simply removes the container right after it finishes `wp` command. If we did not do this, we would create an orphaned container.

For example:

```
$ docker compose run --rm wpcli post list 
```

is equipvalent to:

```
$ wp post list
```

## License
GPL v3.0
