# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.TspAccount do
  @moduledoc """
  TSP account of the user.
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :conference_code,
    :leader_pin,
    :dial_in_numbers
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :conference_code => String.t(),
          :leader_pin => String.t(),
          :dial_in_numbers => [InlineResponse20036DialInNumbers]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.TspAccount do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :dial_in_numbers,
      :list,
      ZoomAPI.Model.InlineResponse20036DialInNumbers,
      options
    )
  end
end
