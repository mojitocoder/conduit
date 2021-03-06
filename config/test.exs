use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :conduit, ConduitWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :conduit, Conduit.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "quynh",
  password: "",
  database: "conduit_readstore_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Configure the event store database
config :eventstore, EventStore.Storage,
  serializer: Commanded.Serialization.JsonSerializer,
  username: "quynh",
  password: "",
  database: "conduit_eventstore_test",
  hostname: "localhost",
  pool_size: 10
