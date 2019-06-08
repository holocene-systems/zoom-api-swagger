# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule ZoomAPI.Model.Body do
  @moduledoc """
  The account object represents an account on Zoom. The account owner is the user who created the account or had an account created for them. You can read more about the Zoom account structure &lt;a href&#x3D;&#39;https://medium.com/zoom-developer-blog/a-brief-look-at-zoom-account-structures-1d19c745bf8a&#39; target&#x3D;&#39;_blank&#39;&gt;here&lt;/a&gt;.
  """

  @derive [Poison.Encoder]
  defstruct [
    :first_name,
    :last_name,
    :email,
    :password,
    :options,
    :vanity_url
  ]

  @type t :: %__MODULE__{
          :first_name => String.t(),
          :last_name => String.t(),
          :email => String.t(),
          :password => String.t(),
          :options => AccountsOptions,
          :vanity_url => String.t()
        }
end

defimpl Poison.Decoder, for: ZoomAPI.Model.Body do
  import ZoomAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:options, :struct, ZoomAPI.Model.AccountsOptions, options)
  end
end
