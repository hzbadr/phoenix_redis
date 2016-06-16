# SaasRealtimeApi

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix


## Create Project
  *  mix phoenix.new saas_realtime_api --no-brunch --no-html --no-ecto
  * cd saas_realtime_api && mix phoenix.server
  * iex -S mix phoenix.server

## Install Redis
  * sudo add-apt-repository ppa:chris-lea/redis-server
  * sudo apt-get install redis-server

# Follow this article
  http://www.sobieck.com/2015/11/08/connecting-to-redis-in-a-phoenix-application/


## Cenots
  * http://www.jeramysingleton.com/install-erlang-and-elixir-on-centos-7-minimal/


## ab
  * ab -n 20000 -c 1000 -p post.data -T 'application/x-www-form-urlencoded' http://example.com/api/v1/locations/
  post.data is file which contains post params
