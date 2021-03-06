# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Api.Policy do
  @moduledoc """
  API calls for all endpoints tagged `Policy`.
  """

  alias AnchoreEngineAPIServer.Connection
  import AnchoreEngineAPIServer.RequestBuilder


  @doc """
  Describe the policy language spec implemented by this service.
  Get the policy language spec for this service

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, [%GateSpec{}, ...]} on success
  {:error, info} on failure
  """
  @spec describe_policy(Tesla.Env.client, keyword()) :: {:ok, list(AnchoreEngineAPIServer.Model.GateSpec.t)} | {:error, Tesla.Env.t}
  def describe_policy(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/system/policy_spec")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%AnchoreEngineAPIServer.Model.GateSpec{}])
  end
end
