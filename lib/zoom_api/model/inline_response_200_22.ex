# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20022 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :from,
    :issue_details,
    :next_page_token,
    :page_count,
    :page_size,
    :to,
    :total_records
  ]

  @type t :: %__MODULE__{
          :from => Date.t(),
          :issue_details => [InlineResponse20022IssueDetails],
          :next_page_token => String.t(),
          :page_count => integer(),
          :page_size => integer(),
          :to => Date.t(),
          :total_records => integer()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20022 do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:from, :date, nil, options)
    |> deserialize(:issue_details, :list, ZoomAPI.Model.InlineResponse20022IssueDetails, options)
    |> deserialize(:to, :date, nil, options)
  end
end