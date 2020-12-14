# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.EventsList do
  @moduledoc """
  Response envelope for paginated listing of events
  """

  @derive [Poison.Encoder]
  defstruct [
    :item_count,
    :next_page,
    :page,
    :results
  ]

  @type t :: %__MODULE__{
    :item_count => integer(),
    :next_page => boolean(),
    :page => integer(),
    :results => [EventResponse]
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.EventsList do
  import AnchoreEngineAPIServer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:results, :list, AnchoreEngineAPIServer.Model.EventResponse, options)
  end
end

