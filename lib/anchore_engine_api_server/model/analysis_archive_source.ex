# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.AnalysisArchiveSource do
  @moduledoc """
  An image reference in the analysis archive for the purposes of loading analysis from the archive into th working set
  """

  @derive [Poison.Encoder]
  defstruct [
    :digest
  ]

  @type t :: %__MODULE__{
    :digest => String.t
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.AnalysisArchiveSource do
  def decode(value, _options) do
    value
  end
end
