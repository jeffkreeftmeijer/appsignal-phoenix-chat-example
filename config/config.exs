# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_chat_example,
  ecto_repos: [PhoenixChatExample.Repo]

# Configures the endpoint
config :phoenix_chat_example, PhoenixChatExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NhVYKKIbGuZ7cP4bUTxSXkHt/glaL4WIKU4JUtx/4SK5g5Qq4J7EOx6kAbDT6B64",
  render_errors: [view: PhoenixChatExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixChatExample.PubSub,
           adapter: Phoenix.PubSub.PG2],
  instrumenters: [Appsignal.Phoenix.Instrumenter]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
  eex: Appsignal.Phoenix.Template.EExEngine,
  exs: Appsignal.Phoenix.Template.ExsEngine

config :phoenix_chat_example, PhoenixChatExample.Repo,
    loggers: [Appsignal.Ecto, Ecto.LogEntry]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

import_config "appsignal.exs"
