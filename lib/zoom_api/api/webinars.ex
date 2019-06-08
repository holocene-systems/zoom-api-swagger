# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.Webinars do
  @moduledoc """
  API calls for all endpoints tagged `Webinars`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  List of Past Webinar Instances
  List of past webinar instances.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec past_webinars(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def past_webinars(connection, webinar_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/past_webinars/#{webinar_id}/instances")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end

  @doc """
  Retrieve a Webinar
  Retrieve a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): Webinar occurrence id

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20038{}} on success
  {:error, info} on failure
  """
  @spec webinar(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20038.t()} | {:error, Tesla.Env.t()}
  def webinar(connection, webinar_id, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query
    }

    %{}
    |> method(:get)
    |> url("/webinars/#{webinar_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20038{})
  end

  @doc """
  Retrieve a webinar&#39;s absentees
  List absentees for a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_uuid (String.t): The webinar UUID.
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): The meeting occurrence ID.
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.RegistrationList{}} on success
  {:error, info} on failure
  """
  @spec webinar_absentees(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.RegistrationList.t()} | {:error, Tesla.Env.t()}
  def webinar_absentees(connection, webinar_uuid, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/past_webinars/#{webinar_uuid}/absentees")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.RegistrationList{})
  end

  @doc """
  Create a Webinar
  Create a webinar for a user. &lt;aside&gt;The expiration time of the start_url object is two hours. For API users the expiration time is 90 days.&lt;/aside&gt;&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - body (object): User.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_create(Tesla.Env.client(), String.t(), ZoomAPI.Model.Object.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_create(connection, user_id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/users/#{user_id}/webinars")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete a Webinar
  Delete a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): The meeting occurrence ID.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_delete(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_delete(connection, webinar_id, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query
    }

    %{}
    |> method(:delete)
    |> url("/webinars/#{webinar_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Add Webinar Panelists
  Add a panelist to the webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - body (Body24):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_panelist_create(
          Tesla.Env.client(),
          integer(),
          ZoomAPI.Model.Body24.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_panelist_create(connection, webinar_id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/webinars/#{webinar_id}/panelists")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Remove Webinar Panelists
  Remove a panelist from a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - panelist_id (integer()): The panelist ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_panelist_delete(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_panelist_delete(connection, webinar_id, panelist_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/webinars/#{webinar_id}/panelists/#{panelist_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List Webinar Panelists
  List panelists for a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20039{}} on success
  {:error, info} on failure
  """
  @spec webinar_panelists(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20039.t()} | {:error, Tesla.Env.t()}
  def webinar_panelists(connection, webinar_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webinars/#{webinar_id}/panelists")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20039{})
  end

  @doc """
  Remove Webinar Panelists
  Remove all panelists from a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_panelists_delete(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_panelists_delete(connection, webinar_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/webinars/#{webinar_id}/panelists")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Create a webinar&#39;s poll
  Create a poll for a webinar&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - body (object): Webinar poll object
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20114{}} on success
  {:error, info} on failure
  """
  @spec webinar_poll_create(Tesla.Env.client(), integer(), ZoomAPI.Model.Object.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20114.t()} | {:error, Tesla.Env.t()}
  def webinar_poll_create(connection, webinar_id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/webinars/#{webinar_id}/polls")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20114{})
  end

  @doc """
  Delete a webinar&#39;s Poll
  Delete a webinar&#39;s poll.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - poll_id (String.t): The poll ID
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_poll_delete(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_poll_delete(connection, webinar_id, poll_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/webinars/#{webinar_id}/polls/#{poll_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieve a webinar&#39;s poll
  Retrieve a webinar&#39;s poll&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - poll_id (String.t): The poll ID
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20114{}} on success
  {:error, info} on failure
  """
  @spec webinar_poll_get(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20114.t()} | {:error, Tesla.Env.t()}
  def webinar_poll_get(connection, webinar_id, poll_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webinars/#{webinar_id}/polls/#{poll_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20114{})
  end

  @doc """
  Update a webinar&#39;s poll
  Update a webinar&#39;s poll&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - poll_id (String.t): The poll ID
  - body (object): Webinar Poll
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_poll_update(
          Tesla.Env.client(),
          integer(),
          String.t(),
          ZoomAPI.Model.Object.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_poll_update(connection, webinar_id, poll_id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/webinars/#{webinar_id}/polls/#{poll_id}")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List a webinar&#39;s polls
  List polls of a webinar&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec webinar_polls(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def webinar_polls(connection, webinar_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webinars/#{webinar_id}/polls")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end

  @doc """
  Add Webinar Registrants
  Add a registrant for a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - body (object):
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_ids (String.t): Occurrence ID. Get this value from the webinar get API. Multiple values separated by a comma.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20113{}} on success
  {:error, info} on failure
  """
  @spec webinar_registrant_create(
          Tesla.Env.client(),
          integer(),
          ZoomAPI.Model.Object.t(),
          keyword()
        ) :: {:ok, ZoomAPI.Model.InlineResponse20113.t()} | {:error, Tesla.Env.t()}
  def webinar_registrant_create(connection, webinar_id, body, opts \\ []) do
    optional_params = %{
      :occurrence_ids => :query
    }

    %{}
    |> method(:post)
    |> url("/webinars/#{webinar_id}/registrants")
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20113{})
  end

  @doc """
  Retrieve a specific registrant from a webinar
  Get a specific registrant for a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - registrant_id (String.t): The registrant ID.
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): The meeting occurrence ID.

  ## Returns

  {:ok, %ZoomAPI.Model.WebianrRegistrant{}} on success
  {:error, info} on failure
  """
  @spec webinar_registrant_get(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.WebianrRegistrant.t()} | {:error, Tesla.Env.t()}
  def webinar_registrant_get(connection, webinar_id, registrant_id, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query
    }

    %{}
    |> method(:get)
    |> url("/webinars/#{webinar_id}/registrants/#{registrant_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.WebianrRegistrant{})
  end

  @doc """
  Update a webinar&#39;s registration fields.
  Update a webinar&#39;s registration fields and questions.  Pre-requisite: Registration option for webinar should be set as required to use this API.

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - body (object): Webinar Registrant Questions
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_registrant_question_update(
          Tesla.Env.client(),
          integer(),
          ZoomAPI.Model.Object.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_registrant_question_update(connection, webinar_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/webinars/#{webinar_id}/registrants/questions")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update Webinar Registrant Status
  Update a webinar registrant&#39;s status.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - body (Body25):
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): The meeting occurrence ID.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_registrant_status(
          Tesla.Env.client(),
          integer(),
          ZoomAPI.Model.Body25.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_registrant_status(connection, webinar_id, body, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query
    }

    %{}
    |> method(:put)
    |> url("/webinars/#{webinar_id}/registrants/status")
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List Webinar Registrants
  List registrants for a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): The meeting occurrence ID.
    - :status (String.t): The registrant status:&lt;br&gt;&#x60;pending&#x60; - Registrant&#39;s status is pending.&lt;br&gt;&#x60;approved&#x60; - Registrant&#39;s status is approved.&lt;br&gt;&#x60;denied&#x60; - Registrant&#39;s status is denied.
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.RegistrationList{}} on success
  {:error, info} on failure
  """
  @spec webinar_registrants(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.RegistrationList.t()} | {:error, Tesla.Env.t()}
  def webinar_registrants(connection, webinar_id, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query,
      :status => :query,
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/webinars/#{webinar_id}/registrants")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.RegistrationList{})
  end

  @doc """
  Retrieve a webinar&#39;s registrant questions
  Retrieve the questions and registration fields for a webinar.

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20040{}} on success
  {:error, info} on failure
  """
  @spec webinar_registrants_questions_get(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20040.t()} | {:error, Tesla.Env.t()}
  def webinar_registrants_questions_get(connection, webinar_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webinars/#{webinar_id}/registrants/questions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20040{})
  end

  @doc """
  Update Webinar Status
  Update a webinar&#39;s status. You can call this API to end an ongoing webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - body (Body23):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_status(Tesla.Env.client(), integer(), ZoomAPI.Model.Body23.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_status(connection, webinar_id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/webinars/#{webinar_id}/status")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update a Webinar
  Update a webinar.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (integer()): The webinar ID.
  - body (object): Webinar.
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): Webinar occurrence id. Support change of agenda, start_time, duration, settings: {host_video, panelist_video, hd_video, watermark, auto_recording}

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webinar_update(Tesla.Env.client(), integer(), ZoomAPI.Model.Object.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def webinar_update(connection, webinar_id, body, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query
    }

    %{}
    |> method(:patch)
    |> url("/webinars/#{webinar_id}")
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List Webinars
  List webinars for a user.&lt;br&gt;&lt;br&gt; Scopes: &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.UserList{}} on success
  {:error, info} on failure
  """
  @spec webinars(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.UserList.t()} | {:error, Tesla.Env.t()}
  def webinars(connection, user_id, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/users/#{user_id}/webinars")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.UserList{})
  end
end
