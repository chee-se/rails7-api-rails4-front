# Rails7-Api & Rails4-Front

[Research Project for ActiveResource::eyes:](https://github.com/chee-se/study-memo/blob/main/my-practice/ruby-on-rails/active-resource.md)

## Versions(.env file)

- Docker Compose 3.9

### APP

- ruby 2.2
- Ruby on Rails 4.3

### API

- ruby 3.2
- Ruby on Rails 7.0
- MySQL 8.0

## Bootstrap

1. edit versions

```env
.env

COMPOSE_RUBY_VERSION=3.2.0
COMPOSE_ALPINE_VERSION=3.17 # 余計なイメージのダウンロードを避けるため、ALPINEのバージョンをそろえて高速化する
COMPOSE_MYSQL_VERSION=8.0.31
```

```gemfile
Gemfile

ruby '3.2.0'
gem 'rails', '~> 7.0.4'
```

2. execute command below and create rails project

```shell
# create rails project
docker-compose run --rm api bundle exec rails new . --api -d mysql
docker-compose run --rm app bundle exec rails new . --skip-activerecord
```

if you clone existing rails project by cloning repository

```shell
# create credentials
docker-compose run --rm --no-deps -e EDITOR="vi" app bundle exec rails credentials:edit
```

## Boot server

```shell
docker-compose up -d
```
