# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.TrackingField do
  @moduledoc """
  API calls for all endpoints tagged `TrackingField`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Create a Tracking Field
  Create a Tracking Field on your Zoom account&lt;br&gt;&lt;br&gt; Scopes: &#x60;trackingfield:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - body (TrackingField): Tracking Field
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2013{}} on success
  {:error, info} on failure
  """
  @spec trackingfield_create(Tesla.Env.client(), ZoomAPI.Model.TrackingField.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2013.t()} | {:error, Tesla.Env.t()}
  def trackingfield_create(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/tracking_fields")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2013{})
  end

  @doc """
  Delete a Tracking Field
  Delete a Tracking Field on your Zoom account&lt;br&gt;&lt;br&gt; Scopes: &#x60;trackingfield:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - field_id (String.t): The Tracking Field ID
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec trackingfield_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def trackingfield_delete(connection, field_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/tracking_fields/#{field_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieve a Tracking Field
  Retrieve a tracking field&lt;br&gt;&lt;br&gt; Scopes: &#x60;trackingfield:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - field_id (String.t): The Tracking Field ID
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2013{}} on success
  {:error, info} on failure
  """
  @spec trackingfield_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2013.t()} | {:error, Tesla.Env.t()}
  def trackingfield_get(connection, field_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/tracking_fields/#{field_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2013{})
  end

  @doc """
  List Tracking Fields
  List Tracking Fields on your Zoom account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;trackingfield:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, map} on success
  {:error, info} on failure
  """
  @spec trackingfield_list(Tesla.Env.client(), keyword()) ::
          {:ok, map} | {:error, Tesla.Env.t()}
  def trackingfield_list(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/tracking_fields")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode()
  end

  @doc """
  Update a Tracking Field
  Update a Tracking Field on your Zoom account&lt;br&gt;&lt;br&gt; Scopes: &#x60;trackingfield:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - field_id (String.t): The Tracking Field ID
  - body (TrackingField1):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec trackingfield_update(
          Tesla.Env.client(),
          String.t(),
          ZoomAPI.Model.TrackingField1.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def trackingfield_update(connection, field_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/tracking_fields/#{field_id}")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
