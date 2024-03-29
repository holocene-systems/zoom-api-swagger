# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.Body9 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :type,
    :search_by_domain,
    :search_by_account,
    :search_by_ma_account
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :type => String.t(),
          :search_by_domain => boolean(),
          :search_by_account => boolean(),
          :search_by_ma_account => boolean()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.Body9 do
  def decode(value, _options) do
    value
  end
end
