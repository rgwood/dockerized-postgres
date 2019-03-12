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

`docker exec scrapbook_db_server pg_dump scrapbook -U postgres --schema-only > database/schema.sql`

Data only

`docker exec scrapbook_db_server pg_dump scrapbook -U postgres --data-only > database/data.sql`

#### Restore database

`cat database/schema.sql | docker exec -i scrapbook_db_server psql -U postgres scrapbook`

`cat database/data.sql | docker exec -i scrapbook_db_server psql -U postgres scrapbook`

#### Copy static files to nginx serve directory

`docker cp LOCATION_ON_WORKSTATION/. scrapbook_nginx:/usr/share/nginx/html`

Ex:
`docker cp ~/source/next-tailwind/out/. scrapbook_nginx:/usr/share/nginx/html`