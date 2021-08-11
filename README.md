
# 環境構築
Ruby:2.7.4
Hanami: 1.3.4
PostgresSQL: 13.3

Dockerを使った環境構築

```
$ docker compose build
```

```
$ docker compose run --rm web bundle install
```

```
$ docker compose run --rm web bundle exec hanami db prepare
```

```
$ docker compose up
```
-> Topページが表示されたら環境構築完了

