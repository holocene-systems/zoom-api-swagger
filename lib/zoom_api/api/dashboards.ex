# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.Dashboards do
  @moduledoc """
  API calls for all endpoints tagged `Dashboards`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Retrieve CRC Port Usage
  Get the hour by hour CRC Port usage for a specified period of time. &lt;aside class&#x3D;&#39;notice&#39;&gt;We will report a maximum of one month. For example, if \&quot;from\&quot; is set to \&quot;2017-08-05\&quot; and \&quot;to\&quot; is set to \&quot;2017-10-10\&quot; we will adjust \&quot;from\&quot; to \&quot;2017-09-10\&quot;&lt;/aside&gt;.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec dashboard_crc(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def dashboard_crc(connection, from, to, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/metrics/crc")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end

  @doc """
  Retrieve Zoom Meetings Client Feedback
  Retrieve Zoom Meetings Client Feedback

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec dashboard_client_feedback(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def dashboard_client_feedback(connection, from, to, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/metrics/client/feedback")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end

  @doc """
  Retrieve Zoom Meetings Client Feedback Detail
  Retrieve Zoom Meetings Client Feedback Detail

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - feedback_id (String.t): Feedback Detail Id
  - opts (KeywordList): [optional] Optional parameters
    - :from (Date.t): 
    - :to (Date.t): 
    - :page_size (integer()): 
    - :next_page_token (String.t): 

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20041{}} on success
  {:error, info} on failure
  """
  @spec dashboard_client_feedback_detail(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20041.t()} | {:error, Tesla.Env.t()}
  def dashboard_client_feedback_detail(connection, feedback_id, opts \\ []) do
    optional_params = %{
      :from => :query,
      :to => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/client/feedback/#{feedback_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20041{})
  end

  @doc """
  Retrieve IM Metrics
  Retrieve metrics of the Zoom IM.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20021{}} on success
  {:error, info} on failure
  """
  @spec dashboard_im(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20021.t()} | {:error, Tesla.Env.t()}
  def dashboard_im(connection, from, to, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/im")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20021{})
  end

  @doc """
  Retrieve Issue detail of Top 25 Zoom Rooms with issues
  Retrieve Issue detail of Top 25 Zoom Rooms with issues

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - zoomroom_id (String.t): The Zoom room ID.
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20022{}} on success
  {:error, info} on failure
  """
  @spec dashboard_issue_detail_zoom_room(
          Tesla.Env.client(),
          String.t(),
          Date.t(),
          Date.t(),
          keyword()
        ) :: {:ok, ZoomAPI.Model.InlineResponse20022.t()} | {:error, Tesla.Env.t()}
  def dashboard_issue_detail_zoom_room(connection, zoomroom_id, from, to, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/issues/zoomrooms/#{zoomroom_id}")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20022{})
  end

  @doc """
  Retrieve Top 25 Zoom Rooms with issues
  Retrieve Top 25 Zoom Rooms with issues

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec dashboard_issue_zoom_room(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def dashboard_issue_zoom_room(connection, from, to, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/metrics/issues/zoomrooms")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end

  @doc """
  Retrieve Meeting Details
  Retrieve details on live or past meetings.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (String.t): The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;pastOne&#x60; - Past one user meetings.&lt;br&gt;&#x60;live&#x60; - Live meetings.

  ## Returns

  {:ok, %ZoomAPI.Model.MeetingMetrics{}} on success
  {:error, info} on failure
  """
  @spec dashboard_meeting_detail(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.MeetingMetrics.t()} | {:error, Tesla.Env.t()}
  def dashboard_meeting_detail(connection, meeting_id, opts \\ []) do
    optional_params = %{
      :type => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/meetings/#{meeting_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.MeetingMetrics{})
  end

  @doc """
  Retrieve Meeting Participant QOS
  Retrieve the quality of service for participants from live or past meetings.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (String.t): The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  - participant_id (String.t): Participant ID.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;live&#x60; - Live Meetings.

  ## Returns

  {:ok, %ZoomAPI.Model.ParticipantQos{}} on success
  {:error, info} on failure
  """
  @spec dashboard_meeting_participant_qos(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.ParticipantQos.t()} | {:error, Tesla.Env.t()}
  def dashboard_meeting_participant_qos(connection, meeting_id, participant_id, opts \\ []) do
    optional_params = %{
      :type => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/meetings/#{meeting_id}/participants/#{participant_id}/qos")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.ParticipantQos{})
  end

  @doc """
  Retrieve Sharing/Recording Details of Meeting Participants
  Retrieve the sharing and recording details of participants from live or past meetings.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (String.t): The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;live&#x60; - Live Meetings.
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceed the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20017{}} on success
  {:error, info} on failure
  """
  @spec dashboard_meeting_participant_share(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20017.t()} | {:error, Tesla.Env.t()}
  def dashboard_meeting_participant_share(connection, meeting_id, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/meetings/#{meeting_id}/participants/sharing")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20017{})
  end

  @doc """
  Retrieve Meeting Participants
  Retrieve a list of participants from live or past meetings.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (String.t): The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;pastOne&#x60; - Past one user meetings.&lt;br&gt;&#x60;live&#x60; - Live meetings.
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20016{}} on success
  {:error, info} on failure
  """
  @spec dashboard_meeting_participants(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20016.t()} | {:error, Tesla.Env.t()}
  def dashboard_meeting_participants(connection, meeting_id, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/meetings/#{meeting_id}/participants")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20016{})
  end

  @doc """
  List Meeting Participants QOS
  Retrieve a list of meeting participants from live or past meetings and the quality of service they recieved.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (String.t): The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;live&#x60; - Live Meetings.
    - :page_size (integer()): The number of items returned per page.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.ParticipantQosList{}} on success
  {:error, info} on failure
  """
  @spec dashboard_meeting_participants_qos(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.ParticipantQosList.t()} | {:error, Tesla.Env.t()}
  def dashboard_meeting_participants_qos(connection, meeting_id, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/meetings/#{meeting_id}/participants/qos")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.ParticipantQosList{})
  end

  @doc """
  List Meetings
  List live meetings or past meetings for a specified period of time.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;pastOne&#x60; - Past one user meetings. &lt;br&gt;&#x60;live&#x60; - Live meetings.
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20015{}} on success
  {:error, info} on failure
  """
  @spec dashboard_meetings(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20015.t()} | {:error, Tesla.Env.t()}
  def dashboard_meetings(connection, from, to, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/meetings")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20015{})
  end

  @doc """
  Retrieve Webinar Details
  Retrieve details from live or past webinars.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (String.t): The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The webinar type.

  ## Returns

  {:ok, %ZoomAPI.Model.WebinarMetrics{}} on success
  {:error, info} on failure
  """
  @spec dashboard_webinar_detail(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.WebinarMetrics.t()} | {:error, Tesla.Env.t()}
  def dashboard_webinar_detail(connection, webinar_id, opts \\ []) do
    optional_params = %{
      :type => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/webinars/#{webinar_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.WebinarMetrics{})
  end

  @doc """
  Retrieve Webinar Participant QOS
  Retrieve the quality of service that participants from live or past webinars recieved.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (String.t): The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  - participant_id (String.t): Participant ID.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The webinar type.

  ## Returns

  {:ok, %ZoomAPI.Model.ParticipantQos{}} on success
  {:error, info} on failure
  """
  @spec dashboard_webinar_participant_qos(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.ParticipantQos.t()} | {:error, Tesla.Env.t()}
  def dashboard_webinar_participant_qos(connection, webinar_id, participant_id, opts \\ []) do
    optional_params = %{
      :type => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/webinars/#{webinar_id}/participants/#{participant_id}/qos")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.ParticipantQos{})
  end

  @doc """
  Retrieve Sharing/Recording Details of Webinar Participants
  Retrieve the sharing and recording details of participants from live or past webinars. &lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (String.t): The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The webinar type.
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceed the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20017{}} on success
  {:error, info} on failure
  """
  @spec dashboard_webinar_participant_share(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20017.t()} | {:error, Tesla.Env.t()}
  def dashboard_webinar_participant_share(connection, webinar_id, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/webinars/#{webinar_id}/participants/sharing")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20017{})
  end

  @doc """
  Retrieve Webinar Participants
  Retrieve participants from live or past webinars.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (String.t): The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The webinar type.
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20019{}} on success
  {:error, info} on failure
  """
  @spec dashboard_webinar_participants(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20019.t()} | {:error, Tesla.Env.t()}
  def dashboard_webinar_participants(connection, webinar_id, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/webinars/#{webinar_id}/participants")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20019{})
  end

  @doc """
  List Webinar Participant QOS
  Retrieve a list of participants from live or past webinars and the quality of service they received.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (String.t): The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The webinar type.
    - :page_size (integer()): The number of items returned per page.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.ParticipantQosList{}} on success
  {:error, info} on failure
  """
  @spec dashboard_webinar_participants_qos(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.ParticipantQosList.t()} | {:error, Tesla.Env.t()}
  def dashboard_webinar_participants_qos(connection, webinar_id, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/webinars/#{webinar_id}/participants/qos")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.ParticipantQosList{})
  end

  @doc """
  List Webinars
  List all the live or past webinars from a specified period of time. &lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The webinar type.
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20018{}} on success
  {:error, info} on failure
  """
  @spec dashboard_webinars(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20018.t()} | {:error, Tesla.Env.t()}
  def dashboard_webinars(connection, from, to, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/webinars")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20018{})
  end

  @doc """
  Retrieve Zoom Room
  Retrieve Zoom room on account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - zoomroom_id (String.t): The Zoom room ID.
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20020{}} on success
  {:error, info} on failure
  """
  @spec dashboard_zoom_room(Tesla.Env.client(), String.t(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20020.t()} | {:error, Tesla.Env.t()}
  def dashboard_zoom_room(connection, zoomroom_id, from, to, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/zoomrooms/#{zoomroom_id}")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20020{})
  end

  @doc """
  Retrieve Top 25 issues of Zoom Rooms
  Retrieve Top 25 issues of Zoom Rooms

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec dashboard_zoom_room_issue(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def dashboard_zoom_room_issue(connection, from, to, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/metrics/zoomrooms/issues")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end

  @doc """
  List Zoom Rooms
  List all zoom rooms on account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;dashboard:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.ZoomRoomList{}} on success
  {:error, info} on failure
  """
  @spec dashboard_zoom_rooms(Tesla.Env.client(), keyword()) ::
          {:ok, ZoomAPI.Model.ZoomRoomList.t()} | {:error, Tesla.Env.t()}
  def dashboard_zoom_rooms(connection, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/metrics/zoomrooms")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.ZoomRoomList{})
  end
end