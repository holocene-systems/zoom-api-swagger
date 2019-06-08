# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20032 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :tsp_provider,
    :enable,
    :dial_in_numbers,
    :tsp_enabled,
    :master_account_setting_extended,
    :modify_credential_forbidden,
    :dial_in_number_unrestricted
  ]

  @type t :: %__MODULE__{
          :tsp_provider => String.t(),
          :enable => boolean(),
          :dial_in_numbers => [InlineResponse20032DialInNumbers],
          :tsp_enabled => boolean(),
          :master_account_setting_extended => boolean(),
          :modify_credential_forbidden => boolean(),
          :dial_in_number_unrestricted => boolean()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20032 do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :dial_in_numbers,
      :list,
      ZoomAPI.Model.InlineResponse20032DialInNumbers,
      options
    )
  end
end