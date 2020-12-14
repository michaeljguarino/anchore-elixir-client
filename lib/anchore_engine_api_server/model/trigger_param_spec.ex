# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.TriggerParamSpec do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :description,
    :example,
    :name,
    :required,
    :state,
    :superceded_by,
    :validator
  ]

  @type t :: %__MODULE__{
    :description => String.t,
    :example => String.t,
    :name => String.t,
    :required => boolean(),
    :state => String.t,
    :superceded_by => String.t,
    :validator => Object
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.TriggerParamSpec do
  import AnchoreEngineAPIServer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:validator, :struct, AnchoreEngineAPIServer.Model.Object, options)
  end
end
