# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.WebinarRegistrantQuestions do
  @moduledoc """
  Webinar Registrant Questions
  """

  @derive [Poison.Encoder]
  defstruct [
    :questions,
    :custom_questions
  ]

  @type t :: %__MODULE__{
          :questions => [InlineResponse20040Questions],
          :custom_questions => [InlineResponse20040CustomQuestions]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.WebinarRegistrantQuestions do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:questions, :list, ZoomAPI.Model.InlineResponse20040Questions, options)
    |> deserialize(
      :custom_questions,
      :list,
      ZoomAPI.Model.InlineResponse20040CustomQuestions,
      options
    )
  end
end