# rust crud api

following along: [dev.to/francescoxx/rust-crud-rest-api-3n45](https://dev.to/francescoxx/rust-crud-rest-api-3n45)

## prerequesites

- docker
- rust


## build

```sh
DB_URL='postgres://postgres:postgres@db:5432/postgres' cargo build --release    # build locally

docker compose -f docker-compose.yaml build app
docker compose -f docker-compose.yaml up -d                                     # build and run via docker
```

## usage

```sh
docker compose -f docker-compose.yaml exec db psql -U postgres    # connect to db


curl localhost:8080/users
curl localhost:8080/users/
```

## api

```sh
curl -XGET localhost:8080/users

curl -XGET localhost:8080/users/

jq --null-input '{"name": "foo", "email": "foo@bar.baz"}' | curl -XPOST localhost:8080/users -d @-

jq --null-input '{"name": "max", "email": "max@bar.baz"}' | curl -XPUT localhost:8080/users/1 -d @-

curl -i -XDELETE localhost:8080/users/3
```

## see also

- [doc.rust-lang.org/rust-by-example/flow_control/match](https://doc.rust-lang.org/rust-by-example/flow_control/match.html)
- [docs.rs/env_logger/0.10.0/env_logger/#enabling-logging](https://docs.rs/env_logger/0.10.0/env_logger/#enabling-logging)
