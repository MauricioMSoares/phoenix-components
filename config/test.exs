import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_components, PhoenixComponentsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qe4C+UdBHZIdytEj5G0LmkaGC0KMojftZ9e0+1HM8+X2m/QXChDNo5x/7ViiiLF8",
  server: false

# In test we don't send emails.
config :phoenix_components, PhoenixComponents.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
