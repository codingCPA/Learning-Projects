# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :fintech_apps,
  ecto_repos: [FintechApps.Repo]

# Configures the endpoint
config :fintech_apps, FintechApps.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2XxZK8PRyQVT35LM6OmU66qlLAv4jPJfgylsgNJbGKX2PHQiY9v2GkvF3GMDI4ZR",
  render_errors: [view: FintechApps.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FintechApps.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
