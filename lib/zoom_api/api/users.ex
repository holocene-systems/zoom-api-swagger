# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Retrieve a specific user
  Retrieve a user on your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters
    - :login_type (String.t): &#x60;0&#x60; - Facebook&lt;br&gt;&#x60;1&#x60; - Google&lt;br&gt;&#x60;99&#x60; - API&lt;br&gt;&#x60;100&#x60; - Zoom&lt;br&gt;&#x60;101&#x60; - SSO

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20034{}} on success
  {:error, info} on failure
  """
  @spec user(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20034.t()} | {:error, Tesla.Env.t()}
  def user(connection, user_id, opts \\ []) do
    optional_params = %{
      :login_type => :query
    }

    %{}
    |> method(:get)
    |> url("/users/#{user_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20034{})
  end

  @doc """
  Add Assistants
  Add assistants to a user.  Assistants are the users to whom the current user has assigned [scheduling privilege](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege) on the user&#39;s behalf.   **Prerequisite**: Assistants must be under the current user&#39;s account.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - body (UserAssistantsList1): User assistant.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_assistant_create(
          Tesla.Env.client(),
          String.t(),
          ZoomAPI.Model.UserAssistantsList1.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def user_assistant_create(connection, user_id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/users/#{user_id}/assistants")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete One User Assistant
  Delete a specific assistant.&lt;br&gt;&lt;br&gt;  Assistants are the users to whom the current user has assigned [scheduling privilege](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege) on the user&#39;s behalf.  **Prerequisite**: Assistants must be under the current user&#39;s account.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - assistant_id (String.t): Assistant ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_assistant_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_assistant_delete(connection, user_id, assistant_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/users/#{user_id}/assistants/#{assistant_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List User Assistants
  List user assistants.  Assistants are the users to whom the current user has assigned [scheduling privilege](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege) on the user&#39;s behalf.  **Prerequisite**: Assistants must be under the current user&#39;s account.&lt;br&gt; **Scopes**: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.UserAssistantsList{}} on success
  {:error, info} on failure
  """
  @spec user_assistants(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.UserAssistantsList.t()} | {:error, Tesla.Env.t()}
  def user_assistants(connection, user_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/users/#{user_id}/assistants")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.UserAssistantsList{})
  end

  @doc """
  Delete User Assistants
  Delete all user assistants.  Assistants are the users to whom the current user has assigned [scheduling privilege](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege) on the user&#39;s behalf.  **Prerequisite**: Assistants must be under the current user&#39;s account.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_assistants_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_assistants_delete(connection, user_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/users/#{user_id}/assistants")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Create Users
  Create a user using your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - body (Body18): User
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_create(Tesla.Env.client(), ZoomAPI.Model.Body18.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_create(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/users")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete User
  Delete a user on your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters
    - :action (String.t): Delete action options:&lt;br&gt;&#x60;disassociate&#x60; - Disassociate a user.&lt;br&gt;&#x60;delete&#x60;-  Permanently delete a user.&lt;br&gt;Note: To delete pending user in the account, use &#x60;disassociate&#x60;
    - :transfer_email (String.t): Transfer email.
    - :transfer_meeting (boolean()): Transfer meeting.
    - :transfer_webinar (boolean()): Transfer webinar.
    - :transfer_recording (boolean()): Transfer recording.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_delete(connection, user_id, opts \\ []) do
    optional_params = %{
      :action => :query,
      :transfer_email => :query,
      :transfer_meeting => :query,
      :transfer_webinar => :query,
      :transfer_recording => :query
    }

    %{}
    |> method(:delete)
    |> url("/users/#{user_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Check a User Email
  Verify if a user&#39;s email is registered with Zoom.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - email (String.t): The email address to be verified.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, map} on success
  {:error, info} on failure
  """
  @spec user_email(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, map} | {:error, Tesla.Env.t()}
  def user_email(connection, email, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/users/email")
    |> add_param(:query, :email, email)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode()
  end

  @doc """
  Update a User&#39;s  Email
  Update a user&#39;s email.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - body (Body22): User email.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_email_update(Tesla.Env.client(), String.t(), ZoomAPI.Model.Body22.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_email_update(connection, user_id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/users/#{user_id}/email")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update a User&#39;s Password
  Update a user password.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - body (Body21): User password.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_password(Tesla.Env.client(), String.t(), ZoomAPI.Model.Body21.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_password(connection, user_id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/users/#{user_id}/password")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieve User Permissions
  Retrieve a user&#39;s permissions.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20035{}} on success
  {:error, info} on failure
  """
  @spec user_permission(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20035.t()} | {:error, Tesla.Env.t()}
  def user_permission(connection, user_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/users/#{user_id}/permissions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20035{})
  end

  @doc """
  Upload a User&#39;s Profile Picture
  Upload a user&#39;s profile picture.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - pic_file (String.t): “Content-Type: multipart/form-data; boundary&#x3D;$boundary” (where $boundary is the unique, semi-random string that does not occur within the file contents). In place of a JSON request body, the multipart/form-data request body looks like this:  &#x60;&#x60;&#x60; --$boundary Content-Disposition: form-data; name&#x3D;\&quot;pic_file\&quot;; filename&#x3D;\&quot;$filename\&quot; Content-Type: image/jpeg  $filecontents --$boundary-- &#x60;&#x60;&#x60;  It’s also important to note that the line endings are &#x60;\\r\\n&#x60; between the lines
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_picture(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_picture(connection, user_id, pic_file, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/users/#{user_id}/picture")
    |> add_param(:file, :pic_file, pic_file)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Revoke a User&#39;s SSO Token
  Revoke a user&#39;s SSO token.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_sso_token_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_sso_token_delete(connection, user_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/users/#{user_id}/token")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete One User Scheduler
  Delete one of the user&#39;s schedulers.  Schedulers in this context are the users on whose behalf the current user can [schedule](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege) meetings for.  **Prerequisite**: Current user must be under the same account as the scheduler.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - scheduler_id (String.t): Scheduler&#39;s ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_scheduler_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_scheduler_delete(connection, user_id, scheduler_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/users/#{user_id}/schedulers/#{scheduler_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List User Schedulers
  List a user&#39;s schedulers.  Schedulers in this context are the users on whose behalf the current user can [schedule](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege) meetings for.  **Prerequisite**: Current user must be under the same account as the scheduler.&lt;br&gt; **Scopes**: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.UserSchedulersList{}} on success
  {:error, info} on failure
  """
  @spec user_schedulers(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.UserSchedulersList.t()} | {:error, Tesla.Env.t()}
  def user_schedulers(connection, user_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/users/#{user_id}/schedulers")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.UserSchedulersList{})
  end

  @doc """
  Delete User Schedulers
  Delete all of a user&#39;s schedulers.  Schedulers in this context are the users on whose behalf the current user can [schedule](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege) meetings for.   **Prerequisite**: Current user must be under the same account as the scheduler.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_schedulers_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_schedulers_delete(connection, user_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/users/#{user_id}/schedulers")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieve User Settings
  Retrieve a user&#39;s settings.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters
    - :login_type (String.t): &#x60;0&#x60; - Facebook&lt;br&gt;&#x60;1&#x60; - Google&lt;br&gt;&#x60;99&#x60; - API&lt;br&gt;&#x60;100&#x60; - Zoom&lt;br&gt;&#x60;101&#x60; - SSO

  ## Returns

  {:ok, %ZoomAPI.Model.UserSettings{}} on success
  {:error, info} on failure
  """
  @spec user_settings(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.UserSettings.t()} | {:error, Tesla.Env.t()}
  def user_settings(connection, user_id, opts \\ []) do
    optional_params = %{
      :login_type => :query
    }

    %{}
    |> method(:get)
    |> url("/users/#{user_id}/settings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.UserSettings{})
  end

  @doc """
  Update User Settings
  Update a user&#39;s settings.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - body (UserSettings1): User Settings
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_settings_update(
          Tesla.Env.client(),
          String.t(),
          ZoomAPI.Model.UserSettings1.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def user_settings_update(connection, user_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/users/#{user_id}/settings")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update User Status
  Update a user&#39;s status.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - body (Body20): User status.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_status(Tesla.Env.client(), String.t(), ZoomAPI.Model.Body20.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_status(connection, user_id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/users/#{user_id}/status")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieve a User Token
  Retrieve a user&#39;s token.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): User token types:&lt;br&gt;&#x60;token&#x60; - Used for starting meetings with the client SDK.&lt;br&gt;&#x60;zpk&#x60; - Used for generating the start meeting URL (Deprecated).&lt;br&gt;&#x60;zak&#x60; - Used for generating the start meeting URL. The token expiration time is two hours. For API users, the expiration time is 90 days.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20037{}} on success
  {:error, info} on failure
  """
  @spec user_token(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20037.t()} | {:error, Tesla.Env.t()}
  def user_token(connection, user_id, opts \\ []) do
    optional_params = %{
      :type => :query
    }

    %{}
    |> method(:get)
    |> url("/users/#{user_id}/token")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20037{})
  end

  @doc """
  Update User
  Update a user on your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - user_id (String.t): The user ID or email address.
  - body (Body19): User
  - opts (KeywordList): [optional] Optional parameters
    - :login_type (String.t): &#x60;0&#x60; - Facebook&lt;br&gt;&#x60;1&#x60; - Google&lt;br&gt;&#x60;99&#x60; - API&lt;br&gt;&#x60;100&#x60; - Zoom&lt;br&gt;&#x60;101&#x60; - SSO

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_update(Tesla.Env.client(), String.t(), ZoomAPI.Model.Body19.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_update(connection, user_id, body, opts \\ []) do
    optional_params = %{
      :login_type => :query
    }

    %{}
    |> method(:patch)
    |> url("/users/#{user_id}")
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Check a User&#39;s Personal Meeting Room Name
  Check if the user&#39;s personal meeting room name exists.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - vanity_name (String.t): Personal meeting room name.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, map} on success
  {:error, info} on failure
  """
  @spec user_vanity_name(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, map} | {:error, Tesla.Env.t()}
  def user_vanity_name(connection, vanity_name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/users/vanity_name")
    |> add_param(:query, :vanity_name, vanity_name)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode()
  end

  @doc """
  Verify a User&#39;s zpk (Deprecated)
  Check if the zpk is expired. The zpk object is used to authenticate a user.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - zpk (String.t): User zpk.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, map} on success
  {:error, info} on failure
  """
  @spec user_zpk(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, map} | {:error, Tesla.Env.t()}
  def user_zpk(connection, zpk, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/users/zpk")
    |> add_param(:query, :zpk, zpk)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode()
  end

  @doc """
  List Users
  List users on your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;user:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :status (String.t): User statuses:&lt;br&gt;&#x60;active&#x60; - Users with an active status.&lt;br&gt;&#x60;inactive&#x60; - Users with an inactive status.&lt;br&gt;&#x60;pending&#x60; - Users with a pending status.
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20033{}} on success
  {:error, info} on failure
  """
  @spec users(Tesla.Env.client(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20033.t()} | {:error, Tesla.Env.t()}
  def users(connection, opts \\ []) do
    optional_params = %{
      :status => :query,
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20033{})
  end
end
