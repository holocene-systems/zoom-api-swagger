# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.IMChat do
  @moduledoc """
  API calls for all endpoints tagged `IMChat`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Get Chat Channels
  &#x60;This endpoint will be deprecated by the end of June 2019.&#x60;  Return a user&#39;s subscribed channels with IDs.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imcontact:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec getchatchannels(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def getchatchannels(connection, user_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/im/users/#{user_id}/channels")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end

  @doc """
  Retrieve IM Chat Messages
  Retrieve IM chat messages for a specified period of time. &lt;aside&gt;Note: This API only supports oauth2.&lt;/aside&gt;&lt;br&gt;&lt;br&gt; Scopes: &#x60;imchat:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - session_id (String.t): IM chat session ID.
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2009{}} on success
  {:error, info} on failure
  """
  @spec im_chat_messages(Tesla.Env.client(), String.t(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2009.t()} | {:error, Tesla.Env.t()}
  def im_chat_messages(connection, session_id, from, to, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/im/chat/sessions/#{session_id}")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2009{})
  end

  @doc """
  Retrieve IM Chat Sessions
  Retrieve IM Chat sessions for a specified period of time. &lt;aside&gt;Note: This API only supports oauth2.&lt;/aside&gt;&lt;br&gt;&lt;br&gt; Scopes: &#x60;imchat:read, imchat:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2008{}} on success
  {:error, info} on failure
  """
  @spec im_chat_sessions(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2008.t()} | {:error, Tesla.Env.t()}
  def im_chat_sessions(connection, from, to, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/im/chat/sessions")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2008{})
  end

  @doc """
  Retrieve user’s IM messages
  Retrieve IM Chat messages for a specified period of time. &lt;aside&gt;Note: This API only supports oauth2.&lt;/aside&gt;&lt;br&gt;&lt;br&gt; Scopes: &#x60;imchat:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters
    - :chat_user (String.t): Chat user&#39;s ID or email address.
    - :channel (String.t): IM Channel&#39;s ID.
    - :date (String.t): IM message&#39;s query date time, format as yyyy-MM-dd.
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20042{}} on success
  {:error, info} on failure
  """
  @spec listimmessages(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20042.t()} | {:error, Tesla.Env.t()}
  def listimmessages(connection, user_id, opts \\ []) do
    optional_params = %{
      :chat_user => :query,
      :channel => :query,
      :date => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/im/users/#{user_id}/chat/messages")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20042{})
  end

  @doc """
  Send Chatbot Messages
  Send chatbot messages from your marketplace chatbot app.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imchat:bot&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (Body29): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec sendchatbot(Tesla.Env.client(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def sendchatbot(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/im/chat/messages")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Send IM messages
  Send chat messages between two users. &lt;aside&gt;Note: This API only supports oauth2.&lt;/aside&gt;&lt;br&gt;&lt;br&gt;Scopes: &#x60;imchat:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (Body32): 
    - :chat_user (String.t): Chat user&#39;s ID or email address.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20116{}} on success
  {:error, info} on failure
  """
  @spec sendimmessages(Tesla.Env.client(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20116.t()} | {:error, Tesla.Env.t()}
  def sendimmessages(connection, opts \\ []) do
    optional_params = %{
      :body => :body,
      :chat_user => :query
    }

    %{}
    |> method(:post)
    |> url("/im/users/me/chat/messages")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20116{})
  end
end
