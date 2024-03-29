# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20052EmailNotification do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :cloud_recording_available_reminder,
    :jbh_reminder,
    :cancel_meeting_reminder,
    :alternative_host_reminder,
    :schedule_for_host_reminder
  ]

  @type t :: %__MODULE__{
          :cloud_recording_available_reminder => boolean(),
          :jbh_reminder => boolean(),
          :cancel_meeting_reminder => boolean(),
          :alternative_host_reminder => boolean(),
          :schedule_for_host_reminder => boolean()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20052EmailNotification do
  def decode(value, _options) do
    value
  end
end
