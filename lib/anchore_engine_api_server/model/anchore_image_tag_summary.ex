# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.AnchoreImageTagSummary do
  @moduledoc """
  A unique image in the engine.
  """

  @derive [Poison.Encoder]
  defstruct [
    :analysis_status,
    :analyzed_at,
    :created_at,
    :fulltag,
    :imageDigest,
    :imageId,
    :image_status,
    :parentDigest,
    :tag_detected_at
  ]

  @type t :: %__MODULE__{
    :analysis_status => String.t,
    :analyzed_at => integer(),
    :created_at => integer(),
    :fulltag => String.t,
    :imageDigest => String.t,
    :imageId => String.t,
    :image_status => String.t,
    :parentDigest => String.t,
    :tag_detected_at => integer()
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.AnchoreImageTagSummary do
  def decode(value, _options) do
    value
  end
end

