# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.ParticipantQosUserQosCpuUsage do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :zoom_min_cpu_usage,
    :zoom_avg_cpu_usage,
    :zoom_max_cpu_usage,
    :system_max_cpu_usage
  ]

  @type t :: %__MODULE__{
          :zoom_min_cpu_usage => String.t(),
          :zoom_avg_cpu_usage => String.t(),
          :zoom_max_cpu_usage => String.t(),
          :system_max_cpu_usage => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.ParticipantQosUserQosCpuUsage do
  def decode(value, _options) do
    value
  end
end
