# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.ImageContent do
  @moduledoc """
  A metadata content record for a specific image, containing different content type entries
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.ImageContent do
  def decode(value, _options) do
    value
  end
end

