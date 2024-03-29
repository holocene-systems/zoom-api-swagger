# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.DeviceList do
  @moduledoc """
  List of H.323/SIP Devices.
  """

  @derive [Poison.Encoder]
  defstruct [
    :devices
  ]

  @type t :: %__MODULE__{
          :devices => [map]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.DeviceList do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:devices, :list, :map, options)
  end
end
