# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.ImageSource do
  @moduledoc """
  A set of analysis source types. Only one may be set in any given request.
  """

  @derive [Poison.Encoder]
  defstruct [
    :archive,
    :digest,
    :tag
  ]

  @type t :: %__MODULE__{
    :archive => AnalysisArchiveSource,
    :digest => RegistryDigestSource,
    :tag => RegistryTagSource
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.ImageSource do
  import AnchoreEngineAPIServer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:archive, :struct, AnchoreEngineAPIServer.Model.AnalysisArchiveSource, options)
    |> deserialize(:digest, :struct, AnchoreEngineAPIServer.Model.RegistryDigestSource, options)
    |> deserialize(:tag, :struct, AnchoreEngineAPIServer.Model.RegistryTagSource, options)
  end
end

