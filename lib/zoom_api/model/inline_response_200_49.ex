# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20049 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :phone_numbers
  ]

  @type t :: %__MODULE__{
          :phone_numbers => [InlineResponse20049PhoneNumbers]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20049 do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:phone_numbers, :list, ZoomAPI.Model.InlineResponse20049PhoneNumbers, options)
  end
end