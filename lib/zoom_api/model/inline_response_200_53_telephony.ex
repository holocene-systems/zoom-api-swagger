# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20053Telephony do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :third_party_audio
  ]

  @type t :: %__MODULE__{
          :third_party_audio => boolean()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20053Telephony do
  def decode(value, _options) do
    value
  end
end
