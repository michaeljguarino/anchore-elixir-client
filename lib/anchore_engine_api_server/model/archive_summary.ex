# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Model.ArchiveSummary do
  @moduledoc """
  A summarization of the available archives, a place to for long-term storage of audit, analysis, or other data to remove it from the system&#39;s working set but keep it available.
  """

  @derive [Poison.Encoder]
  defstruct [
    :images,
    :rules
  ]

  @type t :: %__MODULE__{
    :images => AnalysisArchiveSummary,
    :rules => AnalysisArchiveRulesSummary
  }
end

defimpl Poison.Decoder, for: AnchoreEngineAPIServer.Model.ArchiveSummary do
  import AnchoreEngineAPIServer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:images, :struct, AnchoreEngineAPIServer.Model.AnalysisArchiveSummary, options)
    |> deserialize(:rules, :struct, AnchoreEngineAPIServer.Model.AnalysisArchiveRulesSummary, options)
  end
end
