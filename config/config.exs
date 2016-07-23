# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chantilly,
  ecto_repos: [Chantilly.Repo]

# Configures the endpoint
config :chantilly, Chantilly.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oZ8Wv+n9eq3hWbIjYuZLGQlH2K9zkzgWZDgclYg/gd9TKDAeiiHyxVeAZbcKhtVr",
  render_errors: [view: Chantilly.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chantilly.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
