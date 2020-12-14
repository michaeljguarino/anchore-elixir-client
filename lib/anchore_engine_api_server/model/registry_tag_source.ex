# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.RegistryTagSource do
  @moduledoc """
  An image reference using a tag in a registry, this is the most common source type.
  """

  @derive [Poison.Encoder]
  defstruct [
    :dockerfile,
    :pullstring
  ]

  @type t :: %__MODULE__{
    :dockerfile => String.t,
    :pullstring => String.t
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.RegistryTagSource do
  def decode(value, _options) do
    value
  end
end
