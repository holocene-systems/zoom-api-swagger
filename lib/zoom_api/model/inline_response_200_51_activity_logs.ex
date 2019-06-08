# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20051ActivityLogs do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :email,
    :time,
    :type,
    :ip_address,
    :client_type,
    :version
  ]

  @type t :: %__MODULE__{
          :email => String.t(),
          :time => DateTime.t(),
          :type => String.t(),
          :ip_address => String.t(),
          :client_type => String.t(),
          :version => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20051ActivityLogs do
  def decode(value, _options) do
    value
  end
end