# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse2015Settings do
  @moduledoc """
  Meeting settings.
  """

  @derive [Poison.Encoder]
  defstruct [
    :host_video,
    :participant_video,
    :cn_meeting,
    :in_meeting,
    :join_before_host,
    :mute_upon_entry,
    :watermark,
    :use_pmi,
    :approval_type,
    :registration_type,
    :audio,
    :auto_recording,
    :enforce_login,
    :enforce_login_domains,
    :alternative_hosts,
    :close_registration,
    :waiting_room,
    :global_dial_in_countries,
    :contact_name,
    :contact_email,
    :registrants_confirmation_email
  ]

  @type t :: %__MODULE__{
          :host_video => boolean(),
          :participant_video => boolean(),
          :cn_meeting => boolean(),
          :in_meeting => boolean(),
          :join_before_host => boolean(),
          :mute_upon_entry => boolean(),
          :watermark => boolean(),
          :use_pmi => boolean(),
          :approval_type => integer(),
          :registration_type => integer(),
          :audio => String.t(),
          :auto_recording => String.t(),
          :enforce_login => boolean(),
          :enforce_login_domains => String.t(),
          :alternative_hosts => String.t(),
          :close_registration => boolean(),
          :waiting_room => boolean(),
          :global_dial_in_countries => [String.t()],
          :contact_name => String.t(),
          :contact_email => String.t(),
          :registrants_confirmation_email => boolean()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse2015Settings do
  def decode(value, _options) do
    value
  end
end
