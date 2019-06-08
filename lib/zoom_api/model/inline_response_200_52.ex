# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20052 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :schedule_meeting,
    :in_meeting,
    :email_notification,
    :recording,
    :telephony
  ]

  @type t :: %__MODULE__{
          :schedule_meeting => InlineResponse20052ScheduleMeeting,
          :in_meeting => InlineResponse20052InMeeting,
          :email_notification => InlineResponse20052EmailNotification,
          :recording => InlineResponse20052Recording,
          :telephony => InlineResponse20052Telephony
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20052 do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :schedule_meeting,
      :struct,
      ZoomAPI.Model.InlineResponse20052ScheduleMeeting,
      options
    )
    |> deserialize(:in_meeting, :struct, ZoomAPI.Model.InlineResponse20052InMeeting, options)
    |> deserialize(
      :email_notification,
      :struct,
      ZoomAPI.Model.InlineResponse20052EmailNotification,
      options
    )
    |> deserialize(:recording, :struct, ZoomAPI.Model.InlineResponse20052Recording, options)
    |> deserialize(:telephony, :struct, ZoomAPI.Model.InlineResponse20052Telephony, options)
  end
end
