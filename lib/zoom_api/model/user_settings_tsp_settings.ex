# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.UserSettingsTspSettings do
  @moduledoc """
  Account Settings: TSP.
  """

  @derive [Poison.Encoder]
  defstruct [
    :call_out,
    :call_out_countries,
    :show_international_numbers_link
  ]

  @type t :: %__MODULE__{
          :call_out => boolean(),
          :call_out_countries => [Object],
          :show_international_numbers_link => boolean()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.UserSettingsTspSettings do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:call_out_countries, :list, ZoomAPI.Model.Object, options)
  end
end
