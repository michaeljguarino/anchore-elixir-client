# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.RegistryConfigurationRequest do
  @moduledoc """
  A registry record describing the endpoint and credentials for a registry
  """

  @derive [Poison.Encoder]
  defstruct [
    :registry,
    :registry_name,
    :registry_pass,
    :registry_type,
    :registry_user,
    :registry_verify
  ]

  @type t :: %__MODULE__{
    :registry => String.t,
    :registry_name => String.t,
    :registry_pass => String.t,
    :registry_type => String.t,
    :registry_user => String.t,
    :registry_verify => boolean()
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.RegistryConfigurationRequest do
  def decode(value, _options) do
    value
  end
end

