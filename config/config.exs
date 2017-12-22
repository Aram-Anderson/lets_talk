# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lets_talk,
  ecto_repos: [LetsTalk.Repo]

# Configures the endpoint
config :lets_talk, LetsTalkWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "06FLtKQ4d66MYop6S6+V35a+XH4UXj8GpPe9bkG3Uo5pCalWK8whsdDbEGFvwDFt",
  render_errors: [view: LetsTalkWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LetsTalk.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
