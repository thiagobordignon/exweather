defmodule Exweather.Router do
  use Exweather.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Exweather do
    pipe_through :api

    get "/weather", WeatherController, :index
  end
end
