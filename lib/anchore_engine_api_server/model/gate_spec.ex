# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.GateSpec do
  @moduledoc """
  A description of the set of gates available in this engine and the triggers and parameters supported
  """

  @derive [Poison.Encoder]
  defstruct [
    :description,
    :name,
    :state,
    :superceded_by,
    :triggers
  ]

  @type t :: %__MODULE__{
    :description => String.t,
    :name => String.t,
    :state => String.t,
    :superceded_by => String.t,
    :triggers => [TriggerSpec]
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.GateSpec do
  import AnchoreEngineAPIServer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:triggers, :list, AnchoreEngineAPIServer.Model.TriggerSpec, options)
  end
end
