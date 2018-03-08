defmodule PredicatorEcto.MixProject do
  use Mix.Project

  def project do
    [
      app: :predicator_ecto,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: description(),
      deps: deps()
    ]
  end

  def description(), do: "Ecto Types for Predicator"

  def package() do
    [
      name: :predicator_ecto,
      maintainers: ["Joshua Richardson"],
      licenses: ["MIT"],
      docs: [extras: ["README.md"]],
      links: %{"GitHub" => "https://github.com/predicator/predicator_ecto"}
    ]
  end

  def application, do: [extra_applications: [:logger]]

  defp deps, do: []
end
