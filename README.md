#### Create a Droplet:
`docker-machine create --driver digitalocean --digitalocean-access-token <ACCESS TOKEN GOES HERE> postgres-adminer`

#### Read the Droplet info/set it as the default target for `docker` commands
`docker-machine env postgres-adminer`

`eval (docker-machine env postgres-adminer)`

#### Deploy+start containers or stop+remove them:
`docker-compose up -d`

`docker-compose down`

#### Stop/start Droplet. Don't do this unless absolutely necessary, it may change the IP address:
`docker-machine stop postgres-adminer`

`docker-machine start postgres-adminer`

#### Backup database
Schema only
`docker exec db_server pg_dump scrapbook -U postgres --schema-only > database/schema.sql`

Data only
`docker exec db_server pg_dump scrapbook -U postgres --data-only > database/data.sql`
