# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.AccountSettingsTelephony do
  @moduledoc """
  Account Settings: Telephony.
  """

  @derive [Poison.Encoder]
  defstruct [
    :third_party_audio,
    :audio_conference_info
  ]

  @type t :: %__MODULE__{
          :third_party_audio => boolean(),
          :audio_conference_info => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.AccountSettingsTelephony do
  def decode(value, _options) do
    value
  end
end
