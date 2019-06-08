# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20046 do
  @moduledoc """
  Phone User Recordings
  """

  @derive [Poison.Encoder]
  defstruct [
    :from,
    :to,
    :page_count,
    :page_number,
    :page_size,
    :total_records,
    :recordings
  ]

  @type t :: %__MODULE__{
          :from => String.t(),
          :to => String.t(),
          :page_count => String.t(),
          :page_number => String.t(),
          :page_size => String.t(),
          :total_records => String.t(),
          :recordings => [InlineResponse20046Recordings]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20046 do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:recordings, :list, ZoomAPI.Model.InlineResponse20046Recordings, options)
  end
end
