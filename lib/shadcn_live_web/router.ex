defmodule ShadcnLiveWeb.Router do
  use ShadcnLiveWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {ShadcnLiveWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  live_session :default, on_mount: [{ShadcnLiveWeb.SaveRequestUri, :save_request_uri}] do
    pipe_through :browser

    live("/", ShadcnLiveWeb.Pages)
    live("/docs", ShadcnLiveWeb.Pages.Docs)
    live("/docs/installation", ShadcnLiveWeb.Pages.Docs.Installation)
    live("/docs/components/accordion", ShadcnLiveWeb.Pages.Docs.Components.Accordion)
    live("/docs/components/alert", ShadcnLiveWeb.Pages.Docs.Components.Alert)
    live("/themes", ShadcnLiveWeb.Pages.Themes)
    live("/examples", ShadcnLiveWeb.Pages.Examples)
  end

  # Enable LiveDashboard in development
  if Application.compile_env(:shadcn_live, :dev_routes) do
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser
      live_dashboard "/dashboard"
    end
  end
end
