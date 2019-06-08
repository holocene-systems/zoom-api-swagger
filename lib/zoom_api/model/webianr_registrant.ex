# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.WebianrRegistrant do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :address,
    :city,
    :comments,
    :country,
    :custom_questions,
    :email,
    :first_name,
    :industry,
    :job_title,
    :last_name,
    :no_of_employees,
    :org,
    :phone,
    :purchasing_time_frame,
    :role_in_purchase_process,
    :state,
    :zip
  ]

  @type t :: %__MODULE__{
          :address => String.t(),
          :city => String.t(),
          :comments => String.t(),
          :country => String.t(),
          :custom_questions => [WebianrRegistrantCustomQuestions],
          :email => String.t(),
          :first_name => String.t(),
          :industry => String.t(),
          :job_title => String.t(),
          :last_name => String.t(),
          :no_of_employees => String.t(),
          :org => String.t(),
          :phone => String.t(),
          :purchasing_time_frame => String.t(),
          :role_in_purchase_process => String.t(),
          :state => String.t(),
          :zip => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.WebianrRegistrant do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :custom_questions,
      :list,
      ZoomAPI.Model.WebianrRegistrantCustomQuestions,
      options
    )
  end
end
