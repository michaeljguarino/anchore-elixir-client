# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.AccessCredential do
  @moduledoc """
  A login credential mapped to a user identity. For password credentials, the username to present for Basic auth is the user&#39;s username from the user record
  """

  @derive [Poison.Encoder]
  defstruct [
    :created_at,
    :type,
    :value
  ]

  @type t :: %__MODULE__{
    :created_at => String.t,
    :type => String.t,
    :value => String.t
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.AccessCredential do
  def decode(value, _options) do
    value
  end
end
