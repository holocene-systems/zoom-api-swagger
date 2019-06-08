# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse2003PlanBase do
  @moduledoc """
  Account base plan object.
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :hosts
  ]

  @type t :: %__MODULE__{
          :type => String.t(),
          :hosts => integer()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse2003PlanBase do
  def decode(value, _options) do
    value
  end
end