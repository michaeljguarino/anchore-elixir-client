# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Api.Import do
  @moduledoc """
  API calls for all endpoints tagged `Import`.
  """

  alias AnchoreEngineAPIServer.Connection
  import AnchoreEngineAPIServer.RequestBuilder


  @doc """
  Import an anchore image tar.gz archive file.

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - archive_file (String.t): anchore image tar archive.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.AnchoreImageList{}} on success
  {:error, info} on failure
  """
  @spec import_image_archive(Tesla.Env.client, String.t, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.AnchoreImageList.t} | {:error, Tesla.Env.t}
  def import_image_archive(connection, archive_file, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/import/images")
    |> add_param(:file, :archive_file, archive_file)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.AnchoreImageList{})
  end
end
