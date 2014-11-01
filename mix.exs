defmodule Instrumental.Mixfile do
  use Mix.Project

  def project do
    [
      app: :instrumental,
      version: "0.0.1",
      elixir: "~> 1.0",
      deps: deps,
    ]
  end

  def application do
    [
      mod: {Instrumental, []},
      applications: [
        :logger
      ],
      registered: [
        Instrumental.Supervisor,
        Instrumental.Connection,
      ],
      env: [
        host: "collector.instrumentalapp.com",
        port: 8000,
        token: "",
      ],
    ]
  end

  defp deps do
    []
  end
end
