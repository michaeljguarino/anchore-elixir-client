# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.AnchoreImageList do
  @moduledoc """
  A list of Anchore Images
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.AnchoreImageList do
  def decode(value, _options) do
    value
  end
end

