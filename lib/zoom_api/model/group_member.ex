# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.GroupMember do
  @moduledoc """
  Group member object.
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :email,
    :first_name,
    :last_name,
    :type
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :email => String.t(),
          :first_name => String.t(),
          :last_name => String.t(),
          :type => integer()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.GroupMember do
  def decode(value, _options) do
    value
  end
end