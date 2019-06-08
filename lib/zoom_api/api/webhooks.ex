# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.Webhooks do
  @moduledoc """
  API calls for all endpoints tagged `Webhooks`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Retrieve a Webhook
  Retrieve a webhook. **DEPRECATED** - This API is deprecated and only available for V1 webhooks that will be phased out over time. To create a webhook for an app, enable this **Feature** for an OAuth2 app using the Marketplace Build UI: https://marketplace.zoom.us/develop/create

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webhook_id (String.t): The webhook ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20115{}} on success
  {:error, info} on failure
  """
  @spec webhook(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20115.t()} | {:error, Tesla.Env.t()}
  def webhook(connection, webhook_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks/#{webhook_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20115{})
  end

  @doc """
  Create a Webhook
  Create a webhook for an account. **DEPRECATED** - This API is deprecated and only available for V1 webhooks that will be phased out over time. To create a webhook for an app, enable this **Feature** for an OAuth2 app using the Marketplace Build UI: https://marketplace.zoom.us/develop/create

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - body (Body27): Webhook.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20115{}} on success
  {:error, info} on failure
  """
  @spec webhook_create(Tesla.Env.client(), ZoomAPI.Model.Body27.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20115.t()} | {:error, Tesla.Env.t()}
  def webhook_create(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/webhooks")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20115{})
  end

  @doc """
  Delete a Webhook
  Delete a webhook. **DEPRECATED** - This API is deprecated and only available for V1 webhooks that will be phased out over time. To create a webhook for an app, enable this **Feature** for an OAuth2 app using the Marketplace Build UI: https://marketplace.zoom.us/develop/create

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webhook_id (String.t): The webhook ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webhook_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webhook_delete(connection, webhook_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/webhooks/#{webhook_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Switch Webhook Version
  Switch webhook version. **DEPRECATED** - This API is deprecated and only available while using the JWT and ONLY for V1 webhooks, which will be phased out over time. To create a webhook for an app, enable this **Feature** for an OAuth2 app using the Marketplace Build UI: https://marketplace.zoom.us/develop/create

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - body (Body26): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webhook_switch(Tesla.Env.client(), ZoomAPI.Model.Body26.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webhook_switch(connection, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/webhooks/options")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update a Webhook
  Update a webhook. **DEPRECATED** - This API is deprecated and only available for V1 webhooks that will be phased out over time. To create a webhook for an app, enable this **Feature** for an OAuth2 app using the Marketplace Build UI: https://marketplace.zoom.us/develop/create

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webhook_id (String.t): The webhook ID.
  - body (Body28): Webhook.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webhook_update(Tesla.Env.client(), String.t(), ZoomAPI.Model.Body28.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webhook_update(connection, webhook_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/webhooks/#{webhook_id}")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List Webhooks
  List webhooks for an account. **DEPRECATED** - This API is deprecated and only available for V1 webhooks that will be phased out over time. To create a webhook for an app, enable this **Feature** for an OAuth2 app using the Marketplace Build UI: https://marketplace.zoom.us/develop/create

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec webhooks(Tesla.Env.client(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def webhooks(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhooks")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end
end
