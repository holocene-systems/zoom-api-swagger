# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.MeetingInfo do
  @moduledoc """
  Meeting object
  """

  @derive [Poison.Encoder]
  defstruct [
    :topic,
    :type,
    :start_time,
    :duration,
    :timezone,
    :created_at,
    :agenda,
    :start_url,
    :join_url,
    :password,
    :h323_password,
    :pmi,
    :tracking_fields,
    :occurrences,
    :settings,
    :recurrence
  ]

  @type t :: %__MODULE__{
          :topic => String.t(),
          :type => integer(),
          :start_time => DateTime.t(),
          :duration => integer(),
          :timezone => String.t(),
          :created_at => DateTime.t(),
          :agenda => String.t(),
          :start_url => String.t(),
          :join_url => String.t(),
          :password => String.t(),
          :h323_password => String.t(),
          :pmi => integer(),
          :tracking_fields => [InlineResponse2015TrackingFields],
          :occurrences => [InlineResponse2015Occurrences],
          :settings => InlineResponse2015Settings,
          :recurrence => InlineResponse2015Recurrence
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.MeetingInfo do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :tracking_fields,
      :list,
      ZoomAPI.Model.InlineResponse2015TrackingFields,
      options
    )
    |> deserialize(:occurrences, :list, ZoomAPI.Model.InlineResponse2015Occurrences, options)
    |> deserialize(:settings, :struct, ZoomAPI.Model.InlineResponse2015Settings, options)
    |> deserialize(:recurrence, :struct, ZoomAPI.Model.InlineResponse2015Recurrence, options)
  end
end
