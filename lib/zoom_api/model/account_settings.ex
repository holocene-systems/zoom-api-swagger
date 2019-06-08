# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.AccountSettings do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :schedule_meting,
    :in_meeting,
    :email_notification,
    :zoom_rooms,
    :security,
    :recording,
    :telephony,
    :integration,
    :feature,
    :tsp
  ]

  @type t :: %__MODULE__{
          :schedule_meting => ZoomAPI.Model.AccountsaccountIdsettingsScheduleMeting.t(),
          :in_meeting => ZoomAPI.Model.AccountsaccountIdsettingsInMeeting.t(),
          :email_notification => ZoomAPI.Model.AccountsaccountIdsettingsEmailNotification.t(),
          :zoom_rooms => ZoomAPI.Model.AccountsaccountIdsettingsZoomRooms.t(),
          :security => ZoomAPI.Model.AccountsaccountIdsettingsSecurity.t(),
          :recording => ZoomAPI.Model.AccountsaccountIdsettingsRecording.t(),
          :telephony => ZoomAPI.Model.AccountsaccountIdsettingsTelephony.t(),
          :integration => ZoomAPI.Model.AccountsaccountIdsettingsIntegration.t(),
          :feature => ZoomAPI.Model.AccountsaccountIdsettingsFeature.t(),
          :tsp => ZoomAPI.Model.AccountsaccountIdsettingsTsp.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.AccountSettings do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :schedule_meting,
      :struct,
      ZoomAPI.Model.AccountsaccountIdsettingsScheduleMeting,
      options
    )
    |> deserialize(
      :in_meeting,
      :struct,
      ZoomAPI.Model.AccountsaccountIdsettingsInMeeting,
      options
    )
    |> deserialize(
      :email_notification,
      :struct,
      ZoomAPI.Model.AccountsaccountIdsettingsEmailNotification,
      options
    )
    |> deserialize(
      :zoom_rooms,
      :struct,
      ZoomAPI.Model.AccountsaccountIdsettingsZoomRooms,
      options
    )
    |> deserialize(:security, :struct, ZoomAPI.Model.AccountsaccountIdsettingsSecurity, options)
    |> deserialize(:recording, :struct, ZoomAPI.Model.AccountsaccountIdsettingsRecording, options)
    |> deserialize(:telephony, :struct, ZoomAPI.Model.AccountsaccountIdsettingsTelephony, options)
    |> deserialize(
      :integration,
      :struct,
      ZoomAPI.Model.AccountsaccountIdsettingsIntegration,
      options
    )
    |> deserialize(:feature, :struct, ZoomAPI.Model.AccountsaccountIdsettingsFeature, options)
    |> deserialize(:tsp, :struct, ZoomAPI.Model.AccountsaccountIdsettingsTsp, options)
  end
end
