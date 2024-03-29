# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.AccountListItem do
  @moduledoc """
  Account object in the account list.
  """

  @derive [Poison.Encoder]
  defstruct [
    :accounts
  ]

  @type t :: %__MODULE__{
          :accounts => [ZoomAPI.Model.AccountListAccounts.t()]
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.AccountListItem do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:accounts, :list, ZoomAPI.Model.AccountListAccounts, options)
  end
end
