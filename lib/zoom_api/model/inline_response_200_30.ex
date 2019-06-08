# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20030 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :from,
    :page_count,
    :page_number,
    :page_size,
    :telephony_usage,
    :to,
    :total_records
  ]

  @type t :: %__MODULE__{
          :from => Date.t(),
          :page_count => integer(),
          :page_number => integer(),
          :page_size => integer(),
          :telephony_usage => [InlineResponse20030TelephonyUsage],
          :to => Date.t(),
          :total_records => integer()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20030 do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:from, :date, nil, options)
    |> deserialize(
      :telephony_usage,
      :list,
      ZoomAPI.Model.InlineResponse20030TelephonyUsage,
      options
    )
    |> deserialize(:to, :date, nil, options)
  end
end