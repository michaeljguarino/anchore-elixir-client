# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.EventResponseEvent do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :category,
    :details,
    :level,
    :message,
    :resource,
    :source,
    :timestamp,
    :type
  ]

  @type t :: %__MODULE__{
    :category => String.t,
    :details => Object,
    :level => String.t,
    :message => String.t,
    :resource => EventResponseEventResource,
    :source => EventResponseEventSource,
    :timestamp => DateTime.t,
    :type => String.t
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.EventResponseEvent do
  import AnchoreEngineAPIServer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:details, :struct, AnchoreEngineAPIServer.Model.Object, options)
    |> deserialize(:resource, :struct, AnchoreEngineAPIServer.Model.EventResponseEventResource, options)
    |> deserialize(:source, :struct, AnchoreEngineAPIServer.Model.EventResponseEventSource, options)
  end
end

