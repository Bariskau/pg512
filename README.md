# Postgresql docker container with 512 dimensions and postgis.

## Build and start with docker-compose
`cp .env.example .env`

`docker-compose build db`

`docker-compose up -d`

## Build and start with docker
`cd docker/db`

`docker build –t pg512:latest .`

`docker run --rm --name postgres \
-e POSTGRES_USERNAME=postgres \ 
-e POSTGRES_DB=pg512 \
-e POSTGRES_PASSWORD=pg512 \
-d -p 5432:5432 pg512:latest`
