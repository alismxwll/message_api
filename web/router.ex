defmodule MessageApi.Router do
  use MessageApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MessageApi do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/messages", MessageController
    end
  end
end
