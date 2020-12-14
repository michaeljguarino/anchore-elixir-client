# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.ContentJavaPackageResponse do
  @moduledoc """
  Java package content listings from images
  """

  @derive [Poison.Encoder]
  defstruct [
    :content,
    :content_type,
    :imageDigest
  ]

  @type t :: %__MODULE__{
    :content => [ContentJavaPackageResponseContent],
    :content_type => String.t,
    :imageDigest => String.t
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.ContentJavaPackageResponse do
  import AnchoreEngineAPIServer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:content, :list, AnchoreEngineAPIServer.Model.ContentJavaPackageResponseContent, options)
  end
end

