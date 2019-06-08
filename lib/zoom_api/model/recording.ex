# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.Recording do
  @moduledoc """
  Recording file object.
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :meeting_id,
    :recording_start,
    :recording_end,
    :file_type,
    :file_size,
    :play_url,
    :download_url,
    :status,
    :deleted_time,
    :recording_type
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :meeting_id => String.t(),
          :recording_start => String.t(),
          :recording_end => String.t(),
          :file_type => String.t(),
          :file_size => float(),
          :play_url => String.t(),
          :download_url => String.t(),
          :status => String.t(),
          :deleted_time => String.t(),
          :recording_type => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.Recording do
  def decode(value, _options) do
    value
  end
end
