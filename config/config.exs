# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "O8A43I9gwAxdI2ayaiJpm0bfg/XG/8x7jDa4wGpx9UOq+4qmiFbCM0UE9FEHUXwF",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :ueberauth, Ueberauth,
  providers: [
    google: { Ueberauth.Strategy.Google, [ opt1: "value", opts2: "value" ] },
    github: { Ueberauth.Strategy.Github, [ opt1: "value", opts2: "value" ] }
  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "90832779de73d9653c1b",
  client_secret: "421b15f2efcbf23d8e6c1e19d8269ea76a2f266d"

config :ueberauth, Ueberauth.Strategy.Google.OAuth,
  client_id: "976619160462-2cgdfml1kkka1ensf3ibtummuab5gcc4.apps.googleusercontent.com",
  client_secret: "ryj4DtIa5n0tA18JQpHeBslz"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
