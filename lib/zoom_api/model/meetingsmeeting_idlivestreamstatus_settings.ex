# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.MeetingsmeetingIdlivestreamstatusSettings do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :active_speaker_name,
    :display_name
  ]

  @type t :: %__MODULE__{
          :active_speaker_name => boolean(),
          :display_name => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.MeetingsmeetingIdlivestreamstatusSettings do
  def decode(value, _options) do
    value
  end
end
