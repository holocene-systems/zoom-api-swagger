# ZoomAPI

The Zoom API allows developers to safely and securely access information from Zoom. You can use this API to build private services or public applications on our [marketplace](http://marketplace.zoom.us). To learn how to get your credentials and create private/public applications, read [this](https://marketplace.zoom.us/docs/guides/authorization/register-app) guide. All endpoints are available via &#x60;https&#x60; and are located at &#x60;api.zoom.us/v2/&#x60;.  For instance you can list all users on an account via &#x60;https://api.zoom.us/v2/users/&#x60;.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `zoom_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:zoom_api, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/zoom_api](https://hexdocs.pm/zoom_api).
