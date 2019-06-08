# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.Body29 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :robot_jid,
    :to_jid,
    :account_jid,
    :content
  ]

  @type t :: %__MODULE__{
          :robot_jid => String.t(),
          :to_jid => String.t(),
          :account_jid => String.t(),
          :content => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.Body29 do
  def decode(value, _options) do
    value
  end
end