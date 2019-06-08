# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.WebinarList do
  @moduledoc """
  List of webinars.
  """

  @derive [Poison.Encoder]
  defstruct [
    :webinars
  ]

  @type t :: %__MODULE__{
          :webinars => [Object]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.WebinarList do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:webinars, :list, ZoomAPI.Model.Object, options)
  end
end