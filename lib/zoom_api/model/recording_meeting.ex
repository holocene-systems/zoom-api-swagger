# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.RecordingMeeting do
  @moduledoc """
  The recording meeting object.
  """

  @derive [Poison.Encoder]
  defstruct [
    :uuid,
    :id,
    :account_id,
    :host_id,
    :topic,
    :start_time,
    :duration,
    :total_size,
    :recording_count
  ]

  @type t :: %__MODULE__{
          :uuid => String.t(),
          :id => String.t(),
          :account_id => String.t(),
          :host_id => String.t(),
          :topic => String.t(),
          :start_time => DateTime.t(),
          :duration => integer(),
          :total_size => String.t(),
          :recording_count => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.RecordingMeeting do
  def decode(value, _options) do
    value
  end
end
