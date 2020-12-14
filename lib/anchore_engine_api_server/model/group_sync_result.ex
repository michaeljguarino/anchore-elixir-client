# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.GroupSyncResult do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :group,
    :status,
    :total_time_seconds,
    :updated_image_count,
    :updated_record_count
  ]

  @type t :: %__MODULE__{
    :group => String.t,
    :status => String.t,
    :total_time_seconds => float(),
    :updated_image_count => integer(),
    :updated_record_count => integer()
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.GroupSyncResult do
  def decode(value, _options) do
    value
  end
end

