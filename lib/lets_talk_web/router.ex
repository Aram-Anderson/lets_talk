defmodule LetsTalkWeb.Router do
  use LetsTalkWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LetsTalkWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController
    scope "/admin", as: :admin do
      resources "/users", Admin.UserController
      resources "/questions", Admin.QuestionController
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", LetsTalkWeb do
  #   pipe_through :api
  # end
end
