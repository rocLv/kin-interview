# README

## Install

* ruby version: 2.7.4
* rails version: 7.0.2.2

## Run

```shell
# cd [project root]
# bundle install
# rails db:create db:migrate
# rails server

```

The app should work fine.

## Test

```shell
# rails test
```

## Curl

#### Test `/register`

```shell
# curl --location -g --request POST 'localhost:3000/register?user[username]=user2' \
--header 'Content-Type: application/json'

```
#### Test `/suggest`

```shell
# curl --location --request POST 'localhost:3000/suggest?first_name=user3&last_name=user4' --header 'Content-Type: application/json'
```


