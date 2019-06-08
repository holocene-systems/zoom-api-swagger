# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.MeetingLiveStream do
  @moduledoc """
  Meeting live stream.
  """

  @derive [Poison.Encoder]
  defstruct [
    :stream_url,
    :stream_key,
    :page_url
  ]

  @type t :: %__MODULE__{
          :stream_url => String.t(),
          :stream_key => String.t(),
          :page_url => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.MeetingLiveStream do
  def decode(value, _options) do
    value
  end
end