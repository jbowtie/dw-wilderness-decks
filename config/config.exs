# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wilderness,
  ecto_repos: [Wilderness.Repo]

# Configures the endpoint
config :wilderness, Wilderness.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n76w21bLVqLl3YEWiypldMk1X0wSCpWTmKRsO3SXyrvjyqXWk4ztSmerV6AOQ6eV",
  render_errors: [view: Wilderness.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Wilderness.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
