defmodule JapaneseConv.MixProject do
  use Mix.Project

  def project do
    [
      app: :japanese_conv,
      version: "0.1.0",
      elixir: "~> 1.12",
      name: "Japanese Kana Convert",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: @description,
      package: package
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
  defp package do
    [ maintainers: ["kitune330"], 
      licenses: ["MIT"], 
      links: %{ "Github" => "https://github.com/kitune330/japanese_conv" } 
    ]
  end
end
