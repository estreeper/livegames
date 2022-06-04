# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ticfracto,
  ecto_repos: [Ticfracto.Repo]

# Configures the endpoint
config :ticfracto, TicfractoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ShhjemN2A5yGZzIOlBlc2BCeAQLthQgyRfevW58hVF5fB9cfd8zIq1s0ZZPp9HVZ",
  render_errors: [view: TicfractoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Ticfracto.PubSub,
  live_view: [signing_salt: "4D45fNWL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
