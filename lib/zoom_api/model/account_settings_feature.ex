# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.AccountSettingsFeature do
  @moduledoc """
  Account Settings: Feature.
  """

  @derive [Poison.Encoder]
  defstruct [
    :meeting_capacity
  ]

  @type t :: %__MODULE__{
          :meeting_capacity => integer()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.AccountSettingsFeature do
  def decode(value, _options) do
    value
  end
end