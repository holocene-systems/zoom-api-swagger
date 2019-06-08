# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.SessionWebinarUpdate do
  @moduledoc """
  Base webinar object for sessions.
  """

  @derive [Poison.Encoder]
  defstruct [
    :topic,
    :type,
    :start_time,
    :duration,
    :timezone,
    :password,
    :agenda,
    :tracking_fields,
    :recurrence,
    :settings
  ]

  @type t :: %__MODULE__{
          :topic => String.t(),
          :type => integer(),
          :start_time => DateTime.t(),
          :duration => integer(),
          :timezone => String.t(),
          :password => String.t(),
          :agenda => String.t(),
          :tracking_fields => [InlineResponse2015TrackingFields],
          :recurrence => InlineResponse2015Recurrence,
          :settings => Object
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.SessionWebinarUpdate do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :tracking_fields,
      :list,
      ZoomAPI.Model.InlineResponse2015TrackingFields,
      options
    )
    |> deserialize(:recurrence, :struct, ZoomAPI.Model.InlineResponse2015Recurrence, options)
    |> deserialize(:settings, :struct, :map, options)
  end
end
