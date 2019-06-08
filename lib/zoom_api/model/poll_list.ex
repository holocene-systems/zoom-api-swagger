# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.PollList do
  @moduledoc """
  Poll List
  """

  @derive [Poison.Encoder]
  defstruct [
    :total_records,
    :polls
  ]

  @type t :: %__MODULE__{
          :total_records => integer(),
          :polls => [Object]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.PollList do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:polls, :list, ZoomAPI.Model.Object, options)
  end
end
