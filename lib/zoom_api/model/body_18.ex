# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.Body18 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :action,
    :user_info
  ]

  @type t :: %__MODULE__{
          :action => String.t(),
          :user_info => ZoomAPI.Model.UsersUserInfo.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.Body18 do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:user_info, :struct, ZoomAPI.Model.UsersUserInfo, options)
  end
end
