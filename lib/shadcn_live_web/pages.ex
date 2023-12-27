defmodule ShadcnLiveWeb.Pages do
  @moduledoc false

  alias ShadcnLiveWeb.Page
  use ShadcnLiveWeb, :live_view

  def render(assigns) do
    ~H"""
    <Page.page route={:main}>
      <h1>Welcome to Shadcn Live</h1>
    </Page.page>
    """
  end
end
