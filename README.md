# rust crud api

following along: [dev.to/francescoxx/rust-crud-rest-api-3n45](https://dev.to/francescoxx/rust-crud-rest-api-3n45)

## prerequesites

- docker
- rust


## build

```sh
DB_URL='postgres://postgres:postgres@db:5432/postgres' cargo build --release    # build locally
docker compose -f docker-compose.yaml up -d                                     # build via docker
```

## usage

```sh
docker compose -f docker-compose.yaml exec db psql -U postgres    # connect to db
```

## see also

- [doc.rust-lang.org/rust-by-example/flow_control/match](https://doc.rust-lang.org/rust-by-example/flow_control/match.html)
