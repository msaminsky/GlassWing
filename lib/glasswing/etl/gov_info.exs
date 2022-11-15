defmodule Glasswing.Etl.GovInfo do
  import HTTPoison

  base_url = "https://api.govinfo.gov"

  def get_collections(api_key \\ Application.get_env(:glasswing, :api_key)) do
    options = [
      params: [api_key: api_key],
      timeout: 16000
    ]

    uri_string =
      base_url
      |> URI.parse()
      |> URI.merge("collections")
      |> URI.to_string()

    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get(uri_string, [], options)

    Jason.decode(body)
  end
end
