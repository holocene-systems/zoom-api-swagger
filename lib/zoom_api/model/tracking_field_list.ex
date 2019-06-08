# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.TrackingFieldList do
  @moduledoc """
  Tracking Field List
  """

  @derive [Poison.Encoder]
  defstruct [
    :total_records,
    :tracking_fields
  ]

  @type t :: %__MODULE__{
          :total_records => integer(),
          :tracking_fields => [map]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.TrackingFieldList do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:tracking_fields, :list, :map, options)
  end
end
