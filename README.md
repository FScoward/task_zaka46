# TaskZaka46

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## docker

```
$ docker build -t task_zaka46_mysql .
$ docker run --name task_zaka46_mysql -e MYSQL_ROOT_PASSWORD=mysql -d -p 3306:3306 task_zaka46_mysql
```

## migration

```
$ mix phx.gen.schema Accounts.Credential credentials email:string:unique user_id:references:users
mix phx.gen.schema Accounts.User users user_id:integer
```