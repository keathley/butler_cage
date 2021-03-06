defmodule Butler.Cage.Mixfile do
  use Mix.Project

  def project do
    [app: :butler_cage,
     version: "0.0.2",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:butler, "~> 0.7.0"}]
  end

  defp description do
    """
    A Butler plugin for showing silly photos of Nick Cage.
    """
  end

  defp package do
    [
      maintainers: ["Chris Keathley"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/keathley/butler_cage"}
    ]
  end
end
