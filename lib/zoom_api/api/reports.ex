# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.Reports do
  @moduledoc """
  API calls for all endpoints tagged `Reports`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Retrieve Cloud Recording Usage Report
  Retrieve cloud recording usage report for a specified period. You can only get cloud recording reports that is one day ealier than the current date and for the most recent period of 6 months. The date gap between from and to dates should be smaller or equal to 30 days. 

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec report_cloud_recording(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def report_cloud_recording(connection, from, to, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/report/cloud_recording")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end

  @doc """
  Retrieve daily report
  Retrieve daily report for one month, can only get daily report for recent 6 months

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :year (integer()): Year for this report
    - :month (integer()): Month for this report

  ## Returns

  {:ok, %ZoomAPI.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec report_daily(Tesla.Env.client(), keyword()) ::
          {:ok, ZoomAPI.Model.Object.t()} | {:error, Tesla.Env.t()}
  def report_daily(connection, opts \\ []) do
    optional_params = %{
      :year => :query,
      :month => :query
    }

    %{}
    |> method(:get)
    |> url("/report/daily")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.Object{})
  end

  @doc """
  Retrieve Meeting Detail Reports
  Retrieve a detail report for a past meeting. &lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (String.t): The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20025{}} on success
  {:error, info} on failure
  """
  @spec report_meeting_details(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20025.t()} | {:error, Tesla.Env.t()}
  def report_meeting_details(connection, meeting_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/report/meetings/#{meeting_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20025{})
  end

  @doc """
  Retrieve Meeting Participant Reports
  Retrieve a participant report for a past meeting.&lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (String.t): The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20026{}} on success
  {:error, info} on failure
  """
  @spec report_meeting_participants(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20026.t()} | {:error, Tesla.Env.t()}
  def report_meeting_participants(connection, meeting_id, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/report/meetings/#{meeting_id}/participants")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20026{})
  end

  @doc """
  Retrieve Meeting Poll Reports
  Retrieve a polling report for a past meeting. &lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - meeting_id (String.t): The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20027{}} on success
  {:error, info} on failure
  """
  @spec report_meeting_polls(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20027.t()} | {:error, Tesla.Env.t()}
  def report_meeting_polls(connection, meeting_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/report/meetings/#{meeting_id}/polls")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20027{})
  end

  @doc """
  Retrieve Meeting Reports
  Retrieve a past meeting report for a specified period of time. Meetings will only return in the response if the meeting has two or more unique participants.  &lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20024{}} on success
  {:error, info} on failure
  """
  @spec report_meetings(Tesla.Env.client(), String.t(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20024.t()} | {:error, Tesla.Env.t()}
  def report_meetings(connection, user_id, from, to, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/report/users/#{user_id}/meetings")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20024{})
  end

  @doc """
  Retrieve operation logs report
  Retrieve operation logs report

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20031{}} on success
  {:error, info} on failure
  """
  @spec report_operation_logs(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20031.t()} | {:error, Tesla.Env.t()}
  def report_operation_logs(connection, from, to, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/report/operationlogs")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20031{})
  end

  @doc """
  Retrieve Sign In / Sign Out Activity Report
  Retrieve a list of sign in / sign out activity logs [report](https://support.zoom.us/hc/en-us/articles/201363213-Getting-Started-with-Reports) of users under a Zoom account.

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :from (DateTime.t): Start date for which you would like to view the activity logs report.
    - :to (DateTime.t): End date up to which you would like to view the activity logs report.
    - :page_size (integer()): The number of records to be returned within a single API call
    - :next_page_token (String.t): Next page token is used to paginate through large result sets

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20051{}} on success
  {:error, info} on failure
  """
  @spec report_sign_in_sign_out_activities(Tesla.Env.client(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20051.t()} | {:error, Tesla.Env.t()}
  def report_sign_in_sign_out_activities(connection, opts \\ []) do
    optional_params = %{
      :from => :query,
      :to => :query,
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/report/activities")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20051{})
  end

  @doc """
  Retrieve Telephone Reports
  Retrieve a telephone report for a specified period of time. &lt;aside&gt; Please note: the \&quot;Toll Report\&quot; option will be removed.&lt;/aside&gt;.&lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): Audio types:&lt;br&gt;&#x60;1&#x60; - Toll-free Call-in &amp; Call-out.
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20030{}} on success
  {:error, info} on failure
  """
  @spec report_telephone(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20030.t()} | {:error, Tesla.Env.t()}
  def report_telephone(connection, from, to, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/report/telephone")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20030{})
  end

  @doc """
  Retrieve Active/Inactive Host Reports
  Retrieve an active or inactive host report for a specified period of time. &lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - from (Date.t): Start date.
  - to (Date.t): End date.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): Active or inactive hosts.&lt;br&gt;&#x60;active&#x60; - Active hosts. &lt;br&gt;&#x60;inactive&#x60; - Inactive hosts.
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20023{}} on success
  {:error, info} on failure
  """
  @spec report_users(Tesla.Env.client(), Date.t(), Date.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20023.t()} | {:error, Tesla.Env.t()}
  def report_users(connection, from, to, opts \\ []) do
    optional_params = %{
      :type => :query,
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/report/users")
    |> add_param(:query, :from, from)
    |> add_param(:query, :to, to)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20023{})
  end

  @doc """
  Retrieve Webinar Detail Reports
  Retrieve a report containing past webinar details.  &lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (String.t): The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20025{}} on success
  {:error, info} on failure
  """
  @spec report_webinar_details(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20025.t()} | {:error, Tesla.Env.t()}
  def report_webinar_details(connection, webinar_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/report/webinars/#{webinar_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20025{})
  end

  @doc """
  Retrieve Webinar Participant Reports
  Retrieve a report on webinar participants.&lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (String.t): The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :next_page_token (String.t): The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20028{}} on success
  {:error, info} on failure
  """
  @spec report_webinar_participants(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20028.t()} | {:error, Tesla.Env.t()}
  def report_webinar_participants(connection, webinar_id, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :next_page_token => :query
    }

    %{}
    |> method(:get)
    |> url("/report/webinars/#{webinar_id}/participants")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20028{})
  end

  @doc """
  Retrieve Webinar Poll Reports
  Retrieve a report on past webinar polls.&lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (String.t): The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20029{}} on success
  {:error, info} on failure
  """
  @spec report_webinar_polls(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20029.t()} | {:error, Tesla.Env.t()}
  def report_webinar_polls(connection, webinar_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/report/webinars/#{webinar_id}/polls")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20029{})
  end

  @doc """
  Retrieve Webinar Q&amp;A Report
  Retrieve a report on past webinar Q&amp;As. &lt;br&gt;&lt;br&gt; Scopes: &#x60;report:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - webinar_id (String.t): The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20029{}} on success
  {:error, info} on failure
  """
  @spec report_webinar_qa(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20029.t()} | {:error, Tesla.Env.t()}
  def report_webinar_qa(connection, webinar_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/report/webinars/#{webinar_id}/qa")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20029{})
  end
end