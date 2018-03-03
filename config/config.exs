# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :task_zaka46,
  ecto_repos: [TaskZaka46.Repo]

# Configures the endpoint
config :task_zaka46, TaskZaka46Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pmwTYw701r2FlTU1cIEOooX+Kf2CCWkE1SMes8pMYAEeK88HbdlO1b4TIGJQ/Hek",
  render_errors: [view: TaskZaka46Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TaskZaka46.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
