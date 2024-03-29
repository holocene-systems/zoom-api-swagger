# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.ImGroup do
  @moduledoc """
  IM group object.
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :search_by_domain,
    :search_by_account,
    :search_by_ma_account
  ]

  @type t :: %__MODULE__{
          :type => String.t(),
          :search_by_domain => boolean(),
          :search_by_account => boolean(),
          :search_by_ma_account => boolean()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.ImGroup do
  def decode(value, _options) do
    value
  end
end
