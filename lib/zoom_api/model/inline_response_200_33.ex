# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20033 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :page_count,
    :page_number,
    :page_size,
    :total_records,
    :users
  ]

  @type t :: %__MODULE__{
          :page_count => integer(),
          :page_number => integer(),
          :page_size => integer(),
          :total_records => integer(),
          :users => [InlineResponse20033Users]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20033 do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:users, :list, ZoomAPI.Model.InlineResponse20033Users, options)
  end
end