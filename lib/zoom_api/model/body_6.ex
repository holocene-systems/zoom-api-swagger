# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.Body6 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name
  ]

  @type t :: %__MODULE__{
          :name => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.Body6 do
  def decode(value, _options) do
    value
  end
end
