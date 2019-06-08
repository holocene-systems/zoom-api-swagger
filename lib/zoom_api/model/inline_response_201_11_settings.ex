# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20111Settings do
  @moduledoc """
  Webinar settings.
  """

  @derive [Poison.Encoder]
  defstruct [
    :host_video,
    :panelists_video,
    :practice_session,
    :hd_video,
    :approval_type,
    :registration_type,
    :audio,
    :auto_recording,
    :enforce_login,
    :enforce_login_domains,
    :alternative_hosts,
    :close_registration,
    :show_share_button,
    :allow_multiple_devices,
    :on_demand,
    :global_dial_in_countries,
    :contact_name,
    :contact_email,
    :registrants_confirmation_email
  ]

  @type t :: %__MODULE__{
          :host_video => boolean(),
          :panelists_video => boolean(),
          :practice_session => boolean(),
          :hd_video => boolean(),
          :approval_type => integer(),
          :registration_type => integer(),
          :audio => String.t(),
          :auto_recording => String.t(),
          :enforce_login => boolean(),
          :enforce_login_domains => String.t(),
          :alternative_hosts => String.t(),
          :close_registration => boolean(),
          :show_share_button => boolean(),
          :allow_multiple_devices => boolean(),
          :on_demand => boolean(),
          :global_dial_in_countries => [String.t()],
          :contact_name => String.t(),
          :contact_email => String.t(),
          :registrants_confirmation_email => boolean()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20111Settings do
  def decode(value, _options) do
    value
  end
end