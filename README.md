# Docker database dev env

This is a skeleton to quickly setup up a database in a Docker container.

## À propos

While you can use something like `docker run --detach --name=mydb -p 52000:3306
--env="MYSQL_ROOT_PASSWORD=pwd" mysql` this repository provides a 
[Makefile](./Makefile) so you can just:

* `make up` (start the DB server)
* `make down` (stop the DB server)
* `make exec` (enter the DB server)
* `make logs` (display logs of the DB server)
* `make rm-vol` (remove the volumes)

## Usage

1. First, create the `.env` file from `.env.dist`. Change the values.
1. Second, you might want to add a SQL file in `data/init/`, which will be used
   as entrypoint to create the DB.
1. Third, just use the `make up [logs]` command to run the DB server.


## Notes

### DBeaver

https://stackoverflow.com/a/59778108/960623

For DBeaver users:
1. Right click your connection, choose "**Edit Connection**"
1. On the "Connection settings" screen (main screen) click on "Edit Driver Settings"
1. Click on "Connection properties", (In recent versions it named "Driver properties")
1. Right click the "user properties" area and choose "Add new property"
1. Add two properties: 
   * "**useSSL**" → "false" 
   * "**allowPublicKeyRetrieval**" → "true"
