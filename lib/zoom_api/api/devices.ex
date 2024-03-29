# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.Devices do
  @moduledoc """
  API calls for all endpoints tagged `Devices`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Create a H.323/SIP Device
  Create a H.323/SIP Device on your Zoom account&lt;br&gt;&lt;br&gt; Scopes: &#x60;h323:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - body (TheH323SipDeviceObject_): H.323/SIP device.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec device_create(Tesla.Env.client(), ZoomAPI.Model.TheH323SipDeviceObject_.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def device_create(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/h323/devices")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete a H.323/SIP Device
  Delete a H.323/SIP device from your Zoom account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;h323:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - device_id (String.t): The device ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec device_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def device_delete(connection, device_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/h323/devices/#{device_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List H.323/SIP Devices
  List H.323/SIP Devices on your Zoom account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;h323:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.H323SipDeviceList{}} on success
  {:error, info} on failure
  """
  @spec device_list(Tesla.Env.client(), keyword()) ::
          {:ok, ZoomAPI.Model.H323SipDeviceList.t()} | {:error, Tesla.Env.t()}
  def device_list(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/h323/devices")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.H323SipDeviceList{})
  end

  @doc """
  Update a H.323/SIP Device
  Update a H.323/SIP device from your Zoom account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;h323:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - device_id (String.t): The device ID.
  - body (TheH323SipDeviceObject1): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec device_update(
          Tesla.Env.client(),
          String.t(),
          ZoomAPI.Model.TheH323SipDeviceObject1.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def device_update(connection, device_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/h323/devices/#{device_id}")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
