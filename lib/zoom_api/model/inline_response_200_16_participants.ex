# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20016Participants do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :user_id,
    :user_name,
    :device,
    :ip_address,
    :location,
    :network_type,
    :microphone,
    :speaker,
    :data_center,
    :connection_type,
    :join_time,
    :leave_time,
    :share_application,
    :share_desktop,
    :share_whiteboard,
    :recording,
    :pc_name,
    :domain,
    :mac_addr,
    :harddisk_id,
    :version
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :user_id => String.t(),
          :user_name => String.t(),
          :device => String.t(),
          :ip_address => String.t(),
          :location => String.t(),
          :network_type => String.t(),
          :microphone => String.t(),
          :speaker => String.t(),
          :data_center => String.t(),
          :connection_type => String.t(),
          :join_time => DateTime.t(),
          :leave_time => DateTime.t(),
          :share_application => boolean(),
          :share_desktop => boolean(),
          :share_whiteboard => boolean(),
          :recording => boolean(),
          :pc_name => String.t(),
          :domain => String.t(),
          :mac_addr => String.t(),
          :harddisk_id => String.t(),
          :version => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20016Participants do
  def decode(value, _options) do
    value
  end
end
