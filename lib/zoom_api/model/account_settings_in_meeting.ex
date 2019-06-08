# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.AccountSettingsInMeeting do
  @moduledoc """
  Account Settings: In Meeting.
  """

  @derive [Poison.Encoder]
  defstruct [
    :e2e_encryption,
    :chat,
    :private_chat,
    :auto_saving_chat,
    :entry_exit_chime,
    :record_play_own_voice,
    :file_transfer,
    :feedback,
    :post_meeting_feedback,
    :co_host,
    :polling,
    :attendee_on_hold,
    :show_meeting_control_toolbar,
    :allow_show_zoom_windows,
    :annotation,
    :whiteboard,
    :webinar_question_answer,
    :anonymous_question_answer,
    :breakout_room,
    :closed_caption,
    :far_end_camera_control,
    :group_hd,
    :virtual_background,
    :watermark,
    :alert_guest_join,
    :auto_answer,
    :p2p_connetion,
    :p2p_ports,
    :ports_range,
    :sending_default_email_invites,
    :use_html_format_email,
    :dscp_marking,
    :dscp_audio,
    :dscp_video,
    :stereo_audio,
    :original_audio,
    :screen_sharing,
    :remote_control,
    :attention_tracking,
    :allow_live_streaming,
    :workplace_by_facebook,
    :custom_live_streaming,
    :custom_service_instructions
  ]

  @type t :: %__MODULE__{
          :e2e_encryption => boolean(),
          :chat => boolean(),
          :private_chat => boolean(),
          :auto_saving_chat => boolean(),
          :entry_exit_chime => String.t(),
          :record_play_own_voice => boolean(),
          :file_transfer => boolean(),
          :feedback => boolean(),
          :post_meeting_feedback => boolean(),
          :co_host => boolean(),
          :polling => boolean(),
          :attendee_on_hold => boolean(),
          :show_meeting_control_toolbar => boolean(),
          :allow_show_zoom_windows => boolean(),
          :annotation => boolean(),
          :whiteboard => boolean(),
          :webinar_question_answer => boolean(),
          :anonymous_question_answer => boolean(),
          :breakout_room => boolean(),
          :closed_caption => boolean(),
          :far_end_camera_control => boolean(),
          :group_hd => boolean(),
          :virtual_background => boolean(),
          :watermark => boolean(),
          :alert_guest_join => boolean(),
          :auto_answer => boolean(),
          :p2p_connetion => boolean(),
          :p2p_ports => boolean(),
          :ports_range => String.t(),
          :sending_default_email_invites => boolean(),
          :use_html_format_email => boolean(),
          :dscp_marking => boolean(),
          :dscp_audio => integer(),
          :dscp_video => integer(),
          :stereo_audio => boolean(),
          :original_audio => boolean(),
          :screen_sharing => boolean(),
          :remote_control => boolean(),
          :attention_tracking => boolean(),
          :allow_live_streaming => boolean(),
          :workplace_by_facebook => boolean(),
          :custom_live_streaming => boolean(),
          :custom_service_instructions => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.AccountSettingsInMeeting do
  def decode(value, _options) do
    value
  end
end