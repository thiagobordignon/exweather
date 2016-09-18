defmodule ListingWeatherRecordsTest do
  use ExUnit.Case, async: true
  use Plug.Test
  alias Exweather.Router

  @opts Router.init([])
  test 'listing records' do
    conn = conn(:get, "/weather")
    response = Router.call(conn, @opts)
    assert response.status == 200
    assert response.resp_body == "[]"
  end
end