defmodule Mix.Tasks.Compile.PhoenixSwagger do
  use Mix.Task

  @shortdoc "Compiles swagger annotations to JSON file"

  @moduledoc """
  See documentation for `Mix.Tasks.Phx.Swagger.Generate`
  """

  def run(_args) do
    # TODO: this should intelligently track if the JSON files need to be updated
    Mix.Task.run("phx.swagger.generate")
  end
end