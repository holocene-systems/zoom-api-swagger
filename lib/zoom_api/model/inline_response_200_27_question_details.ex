# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.InlineResponse20027QuestionDetails do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :question,
    :answer
  ]

  @type t :: %__MODULE__{
          :question => String.t(),
          :answer => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.InlineResponse20027QuestionDetails do
  def decode(value, _options) do
    value
  end
end