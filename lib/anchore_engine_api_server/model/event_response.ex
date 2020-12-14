# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.EventResponse do
  @moduledoc """
  A record of occurance of an asynchronous event triggered either by system or by user activity
  """

  @derive [Poison.Encoder]
  defstruct [
    :created_at,
    :event,
    :generated_uuid
  ]

  @type t :: %__MODULE__{
    :created_at => DateTime.t,
    :event => EventResponseEvent,
    :generated_uuid => String.t
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.EventResponse do
  import AnchoreEngineAPIServer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:event, :struct, AnchoreEngineAPIServer.Model.EventResponseEvent, options)
  end
end
