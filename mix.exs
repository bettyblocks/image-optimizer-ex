defmodule ImageOptimizerEx.Mixfile do
  use Mix.Project

  def project do
    [app: :image_optimizer_ex,
     version: "0.1.0",
     elixir: "~> 1.3",
     name: "Image Optimizer",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: []]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    Tool to optimize jpg/png images for web
    """
  end

  defp package do
    [
      files: ["lib", "README*", "mix.exs"],
      maintainers: ["Peter Arentsen", "Vladimir Kravchenko"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/bettyblocks/image-optimizer-ex"}
    ]
  end
end
