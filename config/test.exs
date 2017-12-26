use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lets_talk, LetsTalkWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :lets_talk, LetsTalk.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "aram987",
  password: "postgres",
  database: "lets_talk_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
