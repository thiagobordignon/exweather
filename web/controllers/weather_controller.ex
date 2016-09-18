defmodule Exweather.WeatherController do
  use Exweather.Web, :controller

  def index(conn, _params) do
    render conn, weather: []
  end

end