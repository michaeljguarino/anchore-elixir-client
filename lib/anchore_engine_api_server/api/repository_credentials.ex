# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Api.RepositoryCredentials do
  @moduledoc """
  API calls for all endpoints tagged `RepositoryCredentials`.
  """

  alias AnchoreEngineAPIServer.Connection
  import AnchoreEngineAPIServer.RequestBuilder


  @doc """
  Add repository to watch


  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - repository (String.t): full repository to add e.g. docker.io/library/alpine
  - opts (KeywordList): [optional] Optional parameters
    - :autosubscribe (boolean()): flag to enable/disable auto tag_update activation when new images from a repo are added
    - :lookuptag (String.t): use specified existing tag to perform repo scan (default is &#39;latest&#39;)
    - :dryrun (boolean()): flag to return tags in the repository without actually watching the repository, default is false
    - :x_anchore_account (String.t): An account name to change the resource scope of the request to that account, if permissions allow (admin only)

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.SubscriptionList{}} on success
  {:error, info} on failure
  """
  @spec add_repository(Tesla.Env.client, String.t, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.SubscriptionList.t} | {:error, Tesla.Env.t}
  def add_repository(connection, repository, opts \\ []) do
    optional_params = %{
      :autosubscribe => :query,
      :lookuptag => :query,
      :dryrun => :query,
      :"x-anchore-account" => :headers
    }
    %{}
    |> method(:post)
    |> url("/repositories")
    |> add_param(:query, :repository, repository)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.SubscriptionList{})
  end
end