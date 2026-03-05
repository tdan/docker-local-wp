# Docker Local WP

Docker Compose file to spin up a local WordPress installation in a heart beat.

## Running Commands with Docker Compose

### Starting Wordpress Docker instance

Make sure Docker daemon is running.

To start a WordPress instance & services, run:

```
$ docker compose up -d
```

To allow host user to write on wp-content/ from host machine, run this script:

```
$ chmod +x fix_permissions_for_local_development.sh
$ ./fix_permissions_for_local_development.sh
```

**!!! Make sure SELinux is permissive, otherwise we won't be able to write on the bind-mount folder**

To access Wordpress, go to http://localhost:18765 on browser.
To access PHPMyAdmin, visit http://localhost:18767.

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
