# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.VendorDataList do
  @moduledoc """
  List of Vendor Data objects
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.VendorDataList do
  def decode(value, _options) do
    value
  end
end
