# Books App

## スクリーンショット

[![Railsの教科書](https://user-images.githubusercontent.com/943541/167558162-a5e9b17b-dc75-44ee-a500-a808f91406d5.png)](https://tatsu-zine.com/books/rails-textbook)

## 開発環境

|項目|バージョン|
|:---|---------:|
|Docker Engine|20.10.12|
|Docker Compose|1.29.2|
|Ruby|3.1.2|
|Rails|7.0.3|
|Puma|5.6.4|
|SQLite 3|3.34|

<deatils><summary>`rails new` オプション指定内容</summary>

| オプション   | 内容                                                         |
| ------------ | ------------------------------------------------------------ |
| `--database` | sqlite3 ※デフォルト値                                       |
| `--minimal`  | [Rails 6.1で`rails new`の生成を最小限にするフラグが追加（翻訳）｜TechRacho by BPS株式会社](https://techracho.bpsinc.jp/hachi8833/2020_11_05/99914) を参照してください|

</details>

## 実行方法

### Railsアプリ

1. 本リポジトリを `git clone` してください
2. 次のコマンドでコンテナを起動してください
```
  $ cd rails7-books_app
  $ docker-compose up
```
3. ブラウザで http://localhost:3000/ にアクセスしてください
4. 終了する場合は `Ctrl + C` でコンテナを終了してください

### Railsコンソール


1. 次のコマンドでコンテナを起動してください
```
  $ cd rails7-books_app
  $ docker-compose up -d
  $ docker-compose exec rails bash
  # rails console
```
2. 次のコマンドでコンテナを終了してください
```
  > exit
  # exit
  $ docker-compose down
```

## テスト方法

```
$ cd rails7-books_app
$ docker-compose -f docker-compose.yml -f docker-compose.test.yml up --abort-on-container-exit
```

## Linter

1. Ruby Style Guide
```
  $ cd rails7-books_app
  $ docker-compose -f docker-compose.yml -f docker-compose.rubocop.yml up --abort-on-container-exit
```
2. HTML
    - https://validator.w3.org/
3. CSS
    - https://jigsaw.w3.org/css-validator/
