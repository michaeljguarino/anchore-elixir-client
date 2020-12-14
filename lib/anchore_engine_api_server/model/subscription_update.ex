# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.SubscriptionUpdate do
  @moduledoc """
  A modification to a subscription entry to change its status or value
  """

  @derive [Poison.Encoder]
  defstruct [
    :active,
    :subscription_value
  ]

  @type t :: %__MODULE__{
    :active => boolean(),
    :subscription_value => String.t
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.SubscriptionUpdate do
  def decode(value, _options) do
    value
  end
end

