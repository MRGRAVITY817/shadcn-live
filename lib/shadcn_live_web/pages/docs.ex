defmodule ShadcnLiveWeb.Pages.Docs do
  @moduledoc false

  alias ShadcnLiveWeb.Page
  use ShadcnLiveWeb, :live_view

  def render(assigns) do
    ~H"""
    <Page.page route={:docs}>
      <h1>Documentation main</h1>
    </Page.page>
    """
  end
end
