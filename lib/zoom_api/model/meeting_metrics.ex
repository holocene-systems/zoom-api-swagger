# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.MeetingMetrics do
  @moduledoc """
  Meeting metric details.
  """

  @derive [Poison.Encoder]
  defstruct [
    :uuid,
    :id,
    :topic,
    :host,
    :email,
    :user_type,
    :start_time,
    :end_time,
    :duration,
    :participants,
    :has_pstn,
    :has_voip,
    :has_3rd_party_audio,
    :has_video,
    :has_screen_share,
    :has_recording,
    :has_sip
  ]

  @type t :: %__MODULE__{
          :uuid => String.t(),
          :id => integer(),
          :topic => String.t(),
          :host => String.t(),
          :email => String.t(),
          :user_type => String.t(),
          :start_time => DateTime.t(),
          :end_time => DateTime.t(),
          :duration => String.t(),
          :participants => integer(),
          :has_pstn => boolean(),
          :has_voip => boolean(),
          :has_3rd_party_audio => boolean(),
          :has_video => boolean(),
          :has_screen_share => boolean(),
          :has_recording => boolean(),
          :has_sip => boolean()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.MeetingMetrics do
  def decode(value, _options) do
    value
  end
end
