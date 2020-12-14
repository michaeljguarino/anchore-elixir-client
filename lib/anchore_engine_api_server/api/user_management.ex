# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AnchoreEngineAPIServer.Api.UserManagement do
  @moduledoc """
  API calls for all endpoints tagged `UserManagement`.
  """

  alias AnchoreEngineAPIServer.Connection
  import AnchoreEngineAPIServer.RequestBuilder


  @doc """
  Create a new user. Only avaialble to admin user.

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - account (AccountCreationRequest):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec create_account(Tesla.Env.client, AnchoreEngineAPIServer.Model.AccountCreationRequest.t, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.Account.t} | {:error, Tesla.Env.t}
  def create_account(connection, account, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/accounts")
    |> add_param(:body, :account, account)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.Account{})
  end

  @doc """
  Create a new user

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - user (UserCreationRequest):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.User{}} on success
  {:error, info} on failure
  """
  @spec create_user(Tesla.Env.client, String.t, AnchoreEngineAPIServer.Model.UserCreationRequest.t, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.User.t} | {:error, Tesla.Env.t}
  def create_user(connection, accountname, user, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/accounts/#{accountname}/users")
    |> add_param(:body, :user, user)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.User{})
  end

  @doc """
  add/replace credential

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - username (String.t):
  - credential (AccessCredential):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.User{}} on success
  {:error, info} on failure
  """
  @spec create_user_credential(Tesla.Env.client, String.t, String.t, AnchoreEngineAPIServer.Model.AccessCredential.t, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.User.t} | {:error, Tesla.Env.t}
  def create_user_credential(connection, accountname, username, credential, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/accounts/#{accountname}/users/#{username}/credentials")
    |> add_param(:body, :credential, credential)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.User{})
  end

  @doc """
  Delete the specified account, only allowed if the account is in the disabled state. All users will be deleted along with the account and all resources will be garbage collected

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_account(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_account(connection, accountname, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/accounts/#{accountname}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete a specific user credential by username of the credential. Cannot be the credential used to authenticate the request.

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - username (String.t):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_user(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_user(connection, accountname, username, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/accounts/#{accountname}/users/#{username}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete a credential by type

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - username (String.t):
  - credential_type (String.t):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_user_credential(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_user_credential(connection, accountname, username, credential_type, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/accounts/#{accountname}/users/#{username}/credentials")
    |> add_param(:query, :credential_type, credential_type)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get info about an user. Only available to admin user. Uses the main user Id, not a username.

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec get_account(Tesla.Env.client, String.t, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.Account.t} | {:error, Tesla.Env.t}
  def get_account(connection, accountname, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/accounts/#{accountname}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.Account{})
  end

  @doc """
  Get a specific user in the specified account

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - username (String.t):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.User{}} on success
  {:error, info} on failure
  """
  @spec get_account_user(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.User.t} | {:error, Tesla.Env.t}
  def get_account_user(connection, accountname, username, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/accounts/#{accountname}/users/#{username}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.User{})
  end

  @doc """
  List user summaries. Only available to the system admin user.

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :state (String.t): Filter accounts by state

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.AccountList{}} on success
  {:error, info} on failure
  """
  @spec list_accounts(Tesla.Env.client, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.AccountList.t} | {:error, Tesla.Env.t}
  def list_accounts(connection, opts \\ []) do
    optional_params = %{
      :state => :query
    }
    %{}
    |> method(:get)
    |> url("/accounts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.AccountList{})
  end

  @doc """
  Get current credential summary

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - username (String.t):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.CredentialList{}} on success
  {:error, info} on failure
  """
  @spec list_user_credentials(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.CredentialList.t} | {:error, Tesla.Env.t}
  def list_user_credentials(connection, accountname, username, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/accounts/#{accountname}/users/#{username}/credentials")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.CredentialList{})
  end

  @doc """
  List accounts for the user

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, [%User{}, ...]} on success
  {:error, info} on failure
  """
  @spec list_users(Tesla.Env.client, String.t, keyword()) :: {:ok, list(AnchoreEngineAPIServer.Model.User.t)} | {:error, Tesla.Env.t}
  def list_users(connection, accountname, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/accounts/#{accountname}/users")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%AnchoreEngineAPIServer.Model.User{}])
  end

  @doc """
  Update the state of an account to either enabled or disabled. For deletion use the DELETE route

  ## Parameters

  - connection (AnchoreEngineAPIServer.Connection): Connection to server
  - accountname (String.t):
  - desired_state (AccountStatus):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %AnchoreEngineAPIServer.Model.AccountStatus{}} on success
  {:error, info} on failure
  """
  @spec update_account_state(Tesla.Env.client, String.t, AnchoreEngineAPIServer.Model.AccountStatus.t, keyword()) :: {:ok, AnchoreEngineAPIServer.Model.AccountStatus.t} | {:error, Tesla.Env.t}
  def update_account_state(connection, accountname, desired_state, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/accounts/#{accountname}/state")
    |> add_param(:body, :desired_state, desired_state)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AnchoreEngineAPIServer.Model.AccountStatus{})
  end
end
