# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.PhoneusersuserIdphoneNumbersPhoneNumbers do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :number
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :number => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.PhoneusersuserIdphoneNumbersPhoneNumbers do
  def decode(value, _options) do
    value
  end
end
