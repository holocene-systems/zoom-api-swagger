# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.Body36 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :action,
    :reason,
    :comment
  ]

  @type t :: %__MODULE__{
          :action => String.t(),
          :reason => String.t(),
          :comment => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.Body36 do
  def decode(value, _options) do
    value
  end
end
