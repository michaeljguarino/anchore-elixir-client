# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.Cvssv3Scores do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :base_score,
    :exploitability_score,
    :impact_score
  ]

  @type t :: %__MODULE__{
    :base_score => float(),
    :exploitability_score => float(),
    :impact_score => float()
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.Cvssv3Scores do
  def decode(value, _options) do
    value
  end
end

