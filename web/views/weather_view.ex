defmodule Exweather.WeatherView do
  use Exweather.Web, :view

  def render("index.json", %{weather: weather}) do
    weather
  end
end