# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.RegistryDigestSource do
  @moduledoc """
  An image reference using a digest in a registry, includes some extra tag and timestamp info in addition to the pull string to allow proper tag history reconstruction.
  """

  @derive [Poison.Encoder]
  defstruct [
    :creation_timestamp_override,
    :dockerfile,
    :pullstring,
    :tag
  ]

  @type t :: %__MODULE__{
    :creation_timestamp_override => DateTime.t,
    :dockerfile => String.t,
    :pullstring => String.t,
    :tag => String.t
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.RegistryDigestSource do
  def decode(value, _options) do
    value
  end
end

