# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20025TrackingFields do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :field,
    :value
  ]

  @type t :: %__MODULE__{
          :field => String.t(),
          :value => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20025TrackingFields do
  def decode(value, _options) do
    value
  end
end
