# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.Groups do
  @moduledoc """
  API calls for all endpoints tagged `Groups`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Retrieve a Group&#39;s Locked Settings
  Retrieve a [group&#39;s](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) locked settings. If you lock a setting, the group members will not be able to modify it individually.  **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): Id of the group.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20053{}} on success
  {:error, info} on failure
  """
  @spec get_group_lock_settings(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20053.t()} | {:error, Tesla.Env.t()}
  def get_group_lock_settings(connection, group_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/groups/#{group_id}/lock_settings")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20053{})
  end

  @doc """
  Retrieve a group&#39;s settings
  Retrieve settings for a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-). **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse20052{}} on success
  {:error, info} on failure
  """
  @spec get_group_settings(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse20052.t()} | {:error, Tesla.Env.t()}
  def get_group_settings(connection, group_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/groups/#{group_id}/settings")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse20052{})
  end

  @doc """
  Retrieve a Group
  Retrieve a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2005{}} on success
  {:error, info} on failure
  """
  @spec group(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2005.t()} | {:error, Tesla.Env.t()}
  def group(connection, group_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/groups/#{group_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2005{})
  end

  @doc """
  Create a Group
  Create a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - body (Body6): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec group_create(Tesla.Env.client(), ZoomAPI.Model.Body6.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def group_create(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/groups")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete a Group
  Delete a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec group_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def group_delete(connection, group_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/groups/#{group_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update a Group&#39;s Locked Settings
  Update a [group&#39;s](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) locked settings. If you lock a setting, the group members will not be able to modify it individually.   **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The Id of the group.
  - opts (KeywordList): [optional] Optional parameters
    - :body (Body39): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec group_locked_settings(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def group_locked_settings(connection, group_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/groups/#{group_id}/lock_settings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List Group Members 
  List the members of a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2006{}} on success
  {:error, info} on failure
  """
  @spec group_members(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2006.t()} | {:error, Tesla.Env.t()}
  def group_members(connection, group_id, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/groups/#{group_id}/members")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2006{})
  end

  @doc """
  Add Group Members
  Add members to a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - body (Body8): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec group_members_create(Tesla.Env.client(), String.t(), ZoomAPI.Model.Body8.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def group_members_create(connection, group_id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/groups/#{group_id}/members")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete a Group Member
  Delete a member from a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - member_id (String.t): The member ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec group_members_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def group_members_delete(connection, group_id, member_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/groups/#{group_id}/members/#{member_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update a Group
  Update a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - body (Body7): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec group_update(Tesla.Env.client(), String.t(), ZoomAPI.Model.Body7.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def group_update(connection, group_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/groups/#{group_id}")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List Groups
  List [groups](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2004{}} on success
  {:error, info} on failure
  """
  @spec groups(Tesla.Env.client(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2004.t()} | {:error, Tesla.Env.t()}
  def groups(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/groups")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2004{})
  end

  @doc """
  Update a group&#39;s settings
  Update settings for a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-). **Prerequisite**: Pro, Business, or Education account&lt;br&gt; **Scopes**: &#x60;group:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): Id of the group.
  - opts (KeywordList): [optional] Optional parameters
    - :body (Body38): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec update_group_settings(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def update_group_settings(connection, group_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/groups/#{group_id}/settings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
