ExUnit.start

Ecto.Adapters.SQL.Sandbox.mode(Superrentals.Repo, :manual)

Bureaucrat.start
ExUnit.start(formatters: [ExUnit.CLIFormatter, Bureaucrat.Formatter])
