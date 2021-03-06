# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.Whitelist do
  @moduledoc """
  A collection of whitelist items to match a policy evaluation against.
  """

  @derive [Poison.Encoder]
  defstruct [
    :comment,
    :id,
    :items,
    :name,
    :version
  ]

  @type t :: %__MODULE__{
    :comment => String.t,
    :id => String.t,
    :items => [WhitelistItem],
    :name => String.t,
    :version => String.t
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.Whitelist do
  import AnchoreEngineAPIServer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:items, :list, AnchoreEngineAPIServer.Model.WhitelistItem, options)
  end
end

