# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.PAC do
  @moduledoc """
  API calls for all endpoints tagged `PAC`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  List a User&#39;s PAC Accounts
  List a user&#39;s PAC accounts.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec user_pa_cs(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def user_pa_cs(connection, user_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/users/#{user_id}/pac")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end
end
