# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20045 do
  @moduledoc """
  Phone User Call Logs
  """

  @derive [Poison.Encoder]
  defstruct [
    :from,
    :to,
    :page_count,
    :page_number,
    :page_size,
    :total_records,
    :call_logs
  ]

  @type t :: %__MODULE__{
          :from => String.t(),
          :to => String.t(),
          :page_count => String.t(),
          :page_number => String.t(),
          :page_size => String.t(),
          :total_records => String.t(),
          :call_logs => [InlineResponse20045CallLogs]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20045 do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:call_logs, :list, ZoomAPI.Model.InlineResponse20045CallLogs, options)
  end
end