# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.Meetings do
  @moduledoc """
  API calls for all endpoints tagged `Meetings`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Retrieve a Meeting
  Retrieve the details of a meeting.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:read:admin&#x60; &#x60;meeting:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): Meeting occurrence id

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20010{}} on success
  {:error, info} on failure
  """
  @spec meeting(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20010.t()} | {:error, Tesla.Env.t()}
  def meeting(connection, meeting_id, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query
    }

    %{}
    |> method(:get)
    |> url("/meetings/#{meeting_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20010{})
  end

  @doc """
  Create a Meeting
  Create a meeting for a user. &lt;aside&gt;The expiration time for the start_url object is two hours. For API users, the expiration time is 90 days.&lt;/aside&gt;&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - body (object): Meeting object.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2015{}} on success
  {:error, info} on failure
  """
  @spec meeting_create(Tesla.Env.client(), String.t(), map, keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2015.t()} | {:error, Tesla.Env.t()}
  def meeting_create(connection, user_id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/users/#{user_id}/meetings")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2015{})
  end

  @doc """
  Delete a Meeting
  Delete a meeting.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): The meeting occurrence ID.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec meeting_delete(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def meeting_delete(connection, meeting_id, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query
    }

    %{}
    |> method(:delete)
    |> url("/meetings/#{meeting_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieve Meeting Invitation
  Retrieve the meeting invitation.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:read:admin&#x60; &#x60;meeting:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.MeetingInvitation{}} on success
  {:error, info} on failure
  """
  @spec meeting_invitation(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.MeetingInvitation.t()} | {:error, Tesla.Env.t()}
  def meeting_invitation(connection, meeting_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/meetings/#{meeting_id}/invitation")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.MeetingInvitation{})
  end

  @doc """
  Update Meeting Live Stream Status
  Update a meeting&#39;s live stream status.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - body (Body31): Meeting
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec meeting_live_stream_status_update(
          Tesla.Env.client(),
          integer(),
          ZoomAPI.Model.Body31.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def meeting_live_stream_status_update(connection, meeting_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/meetings/#{meeting_id}/livestream/status")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update Meeting Live Stream
  Update a meeting&#39;s live stream.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - body (Body30): Meeting
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec meeting_live_stream_update(
          Tesla.Env.client(),
          integer(),
          ZoomAPI.Model.Body30.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def meeting_live_stream_update(connection, meeting_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/meetings/#{meeting_id}/livestream")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Create a meeting&#39;s poll
  Create a poll for a meeting&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - body (object): Meeting poll object
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2017{}} on success
  {:error, info} on failure
  """
  @spec meeting_poll_create(Tesla.Env.client(), integer(), map, keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2017.t()} | {:error, Tesla.Env.t()}
  def meeting_poll_create(connection, meeting_id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/meetings/#{meeting_id}/polls")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2017{})
  end

  @doc """
  Delete a meeting&#39;s Poll
  Delete a meeting&#39;s Poll&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - poll_id (String.t): The poll ID
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec meeting_poll_delete(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def meeting_poll_delete(connection, meeting_id, poll_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/meetings/#{meeting_id}/polls/#{poll_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieve a meeting&#39;s poll
  Retrieve a meeting&#39;s poll&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:read:admin&#x60; &#x60;meeting:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - poll_id (String.t): The poll ID
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2017{}} on success
  {:error, info} on failure
  """
  @spec meeting_poll_get(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2017.t()} | {:error, Tesla.Env.t()}
  def meeting_poll_get(connection, meeting_id, poll_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/meetings/#{meeting_id}/polls/#{poll_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2017{})
  end

  @doc """
  Update a meeting&#39;s poll
  Update a meeting&#39;s poll&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - poll_id (String.t): The poll ID
  - body (object): Meeting Poll
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec meeting_poll_update(
          Tesla.Env.client(),
          integer(),
          String.t(),
          map,
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def meeting_poll_update(connection, meeting_id, poll_id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/meetings/#{meeting_id}/polls/#{poll_id}")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List a meeting&#39;s polls
  List polls of a meeting&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:read:admin&#x60; &#x60;meeting:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, map} on success
  {:error, info} on failure
  """
  @spec meeting_polls(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, map} | {:error, Tesla.Env.t()}
  def meeting_polls(connection, meeting_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/meetings/#{meeting_id}/polls")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode()
  end

  @doc """
  Add Meeting Registrant
  Register a participant for a meeting.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - body (object):
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_ids (String.t): Occurrence IDs. You can find these with the meeting get API. Multiple values separated by comma.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2016{}} on success
  {:error, info} on failure
  """
  @spec meeting_registrant_create(
          Tesla.Env.client(),
          integer(),
          map,
          keyword()
        ) :: {:ok, ZoomAPI.Model.InlineResponse2016.t()} | {:error, Tesla.Env.t()}
  def meeting_registrant_create(connection, meeting_id, body, opts \\ []) do
    optional_params = %{
      :occurrence_ids => :query
    }

    %{}
    |> method(:post)
    |> url("/meetings/#{meeting_id}/registrants")
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2016{})
  end

  @doc """
  Update a meeting&#39;s registrant questions
  Update a meeting&#39;s registrant questions

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - body (object): Meeting Registrant Questions
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec meeting_registrant_question_update(
          Tesla.Env.client(),
          integer(),
          map,
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def meeting_registrant_question_update(connection, meeting_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/meetings/#{meeting_id}/registrants/questions")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update Meeting Registrant Status
  Update a meeting registrant&#39;s status.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - body (Body13):
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): The meeting occurrence ID.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec meeting_registrant_status(
          Tesla.Env.client(),
          integer(),
          ZoomAPI.Model.Body13.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def meeting_registrant_status(connection, meeting_id, body, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query
    }

    %{}
    |> method(:put)
    |> url("/meetings/#{meeting_id}/registrants/status")
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List Meeting Registrants
  List registrants of a meeting.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:read:admin&#x60; &#x60;meeting:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): The meeting occurrence ID.
    - :status (String.t): The registrant status:&lt;br&gt;&#x60;pending&#x60; - Registrant&#39;s status is pending.&lt;br&gt;&#x60;approved&#x60; - Registrant&#39;s status is approved.&lt;br&gt;&#x60;denied&#x60; - Registrant&#39;s status is denied.
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.RegistrationList{}} on success
  {:error, info} on failure
  """
  @spec meeting_registrants(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.RegistrationList.t()} | {:error, Tesla.Env.t()}
  def meeting_registrants(connection, meeting_id, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query,
      :status => :query,
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/meetings/#{meeting_id}/registrants")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.RegistrationList{})
  end

  @doc """
  Retrieve a meeting&#39;s registrant questions
  Retrieve a meeting&#39;s registrant questions

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20013{}} on success
  {:error, info} on failure
  """
  @spec meeting_registrants_questions_get(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20013.t()} | {:error, Tesla.Env.t()}
  def meeting_registrants_questions_get(connection, meeting_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/meetings/#{meeting_id}/registrants/questions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20013{})
  end

  @doc """
  Update Meeting Status
  Update a meeting&#39;s status.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - body (Body12):
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec meeting_status(Tesla.Env.client(), integer(), ZoomAPI.Model.Body12.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def meeting_status(connection, meeting_id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/meetings/#{meeting_id}/status")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update a Meeting
  Update the details of a meeting.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:write:admin&#x60; &#x60;meeting:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - body (object): Meeting
  - opts (KeywordList): [optional] Optional parameters
    - :occurrence_id (String.t): Meeting occurrence id. Support change of agenda, start_time, duration, settings: {host_video, participant_video, join_before_host, mute_upon_entry, waiting_room, watermark, auto_recording}

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec meeting_update(Tesla.Env.client(), integer(), map, keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def meeting_update(connection, meeting_id, body, opts \\ []) do
    optional_params = %{
      :occurrence_id => :query
    }

    %{}
    |> method(:patch)
    |> url("/meetings/#{meeting_id}")
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List Meetings
  List meetings for a user.&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:read:admin&#x60; &#x60;meeting:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): The meeting types: &lt;br&gt;&#x60;scheduled&#x60; - All the scheduled meetings.&lt;br&gt;&#x60;live&#x60; - All the live meetings.&lt;br&gt;&#x60;upcoming&#x60; - All the upcoming meetings.
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.GroupList{}} on success
  {:error, info} on failure
  """
  @spec meetings(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.GroupList.t()} | {:error, Tesla.Env.t()}
  def meetings(connection, user_id, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/users/#{user_id}/meetings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.GroupList{})
  end

  @doc """
  Retrieve Past Meeting Details
  Retrieve details from a past meeting. &lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:read:admin&#x60; &#x60;meeting:read&#x60;  &gt; **Note**: Please double encode your UUID when using this API. &gt;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_uuid (String.t): The meeting UUID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20011{}} on success
  {:error, info} on failure
  """
  @spec past_meeting_details(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20011.t()} | {:error, Tesla.Env.t()}
  def past_meeting_details(connection, meeting_uuid, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/past_meetings/#{meeting_uuid}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20011{})
  end

  @doc """
  Retrieve Past Meeting Participants
  Retrieve participants from a past meeting. &lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:read:admin&#x60; &#x60;meeting:read&#x60;  &gt; **Note**: Please double encode your UUID when using this API. &gt;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_uuid (String.t): The meeting UUID.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20012{}} on success
  {:error, info} on failure
  """
  @spec past_meeting_participants(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20012.t()} | {:error, Tesla.Env.t()}
  def past_meeting_participants(connection, meeting_uuid, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/past_meetings/#{meeting_uuid}/participants")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20012{})
  end

  @doc """
  List of ended meeting instances
  List of ended meeting instances&lt;br&gt;&lt;br&gt; Scopes: &#x60;meeting:read:admin&#x60; &#x60;meeting:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (integer()): The meeting ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, map} on success
  {:error, info} on failure
  """
  @spec past_meetings(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, map} | {:error, Tesla.Env.t()}
  def past_meetings(connection, meeting_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/past_meetings/#{meeting_id}/instances")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode()
  end
end
