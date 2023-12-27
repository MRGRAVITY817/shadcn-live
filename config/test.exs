import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :shadcn_live, ShadcnLiveWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "wtO4rHYWEUnozeS4mWsDK0VbLN7xIAr2snp+n5+OzVTqhkIDq0QLbOH9H77kz0x1",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
