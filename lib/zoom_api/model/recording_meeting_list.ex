# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.RecordingMeetingList do
  @moduledoc """
  List of recordings.
  """

  @derive [Poison.Encoder]
  defstruct [
    :meetings
  ]

  @type t :: %__MODULE__{
          :meetings => [map]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.RecordingMeetingList do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:meetings, :list, :map, options)
  end
end
