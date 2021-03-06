defmodule ExMessengerClient.Mixfile do
  use Mix.Project

  def project do

    node = System.get_env("node")
    node = case node do
      nil -> "client"
      n -> n
    end

    mode = System.get_env("mode")
    mode = case mode do
      nil -> "-sname"
      "external" -> "-name"
    end

    [ app: :ex_messenger_client,
      version: "0.0.1",
      deps: deps,
      escript_main_module: ExMessengerClient,
      escript_emu_args: "%%!#{mode} #{node}\n"]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat.git" }
  defp deps do
    []
  end
end
