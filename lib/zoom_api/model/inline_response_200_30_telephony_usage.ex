# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20030TelephonyUsage do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :meeting_id,
    :phone_number,
    :host_name,
    :host_email,
    :dept,
    :start_time,
    :end_time,
    :duration,
    :total,
    :country_name,
    :meeting_type,
    :call_in_number
  ]

  @type t :: %__MODULE__{
          :meeting_id => integer(),
          :phone_number => String.t(),
          :host_name => String.t(),
          :host_email => String.t(),
          :dept => String.t(),
          :start_time => DateTime.t(),
          :end_time => DateTime.t(),
          :duration => integer(),
          :total => float(),
          :country_name => String.t(),
          :meeting_type => String.t(),
          :call_in_number => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20030TelephonyUsage do
  def decode(value, _options) do
    value
  end
end
