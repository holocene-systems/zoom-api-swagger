# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse2016 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :join_url,
    :registrant_id,
    :start_time,
    :topic
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :join_url => String.t(),
          :registrant_id => String.t(),
          :start_time => String.t(),
          :topic => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse2016 do
  def decode(value, _options) do
    value
  end
end
