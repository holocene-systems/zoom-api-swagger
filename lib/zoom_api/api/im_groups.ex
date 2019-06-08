# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Api.IMGroups do
  @moduledoc """
  API calls for all endpoints tagged `IMGroups`.
  """

  alias ZoomAPI.Connection
  import ZoomAPI.RequestBuilder

  @doc """
  Retrieve an IM Directory Group
  Retrieve an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imgroup:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.InlineResponse2007{}} on success
  {:error, info} on failure
  """
  @spec im_group(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.InlineResponse2007.t()} | {:error, Tesla.Env.t()}
  def im_group(connection, group_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/im/groups/#{group_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.InlineResponse2007{})
  end

  @doc """
  Create an IM Directory Group
  Create an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.&lt;br&gt;&lt;br&gt; **Scopes**: &#x60;imgroup:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - body (Body9): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec im_group_create(Tesla.Env.client(), ZoomAPI.Model.Body9.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def im_group_create(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/im/groups")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete an IM Directory Group
  Delete an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imgroup:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec im_group_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def im_group_delete(connection, group_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/im/groups/#{group_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List IM Directory Group Members
  List the members of an IM directory group under your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imgroup:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - opts (KeywordList): [optional] Optional parameters
    - :page_size (integer()): The number of records returned within a single API call.
    - :page_number (integer()): The current page number of returned records.

  ## Returns

  {:ok, %ZoomAPI.Model.GroupMemberList{}} on success
  {:error, info} on failure
  """
  @spec im_group_members(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ZoomAPI.Model.GroupMemberList.t()} | {:error, Tesla.Env.t()}
  def im_group_members(connection, group_id, opts \\ []) do
    optional_params = %{
      :page_size => :query,
      :page_number => :query
    }

    %{}
    |> method(:get)
    |> url("/im/groups/#{group_id}/members")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.GroupMemberList{})
  end

  @doc """
  Add IM Directory Group Members
  Add members to an IM directory group under your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imgroup:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - body (Body11): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec im_group_members_create(
          Tesla.Env.client(),
          String.t(),
          ZoomAPI.Model.Body11.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def im_group_members_create(connection, group_id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/im/groups/#{group_id}/members")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete an IM Directory Group Member
  Delete a member from an IM directory group under your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imgroup:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - member_id (String.t): The member ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec im_group_members_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def im_group_members_delete(connection, group_id, member_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/im/groups/#{group_id}/members/#{member_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Update an IM Directory Group
  Update an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.&lt;br&gt;&lt;br&gt; **Scopes**: &#x60;imgroup:write:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - group_id (String.t): The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
  - body (Body10): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec im_group_update(Tesla.Env.client(), String.t(), ZoomAPI.Model.Body10.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def im_group_update(connection, group_id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/im/groups/#{group_id}")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List IM Directory Groups
  List [IM directory groups](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.&lt;br&gt;&lt;br&gt; **Scopes**: &#x60;imgroup:read:admin&#x60;

  ## Parameters

  - connection (ZoomAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %ZoomAPI.Model.ImGroupList{}} on success
  {:error, info} on failure
  """
  @spec im_groups(Tesla.Env.client(), keyword()) ::
          {:ok, ZoomAPI.Model.ImGroupList.t()} | {:error, Tesla.Env.t()}
  def im_groups(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/im/groups")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%ZoomAPI.Model.ImGroupList{})
  end
end
