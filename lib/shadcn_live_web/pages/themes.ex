defmodule ShadcnLiveWeb.Pages.Themes do
  @moduledoc false

  alias ShadcnLiveWeb.Page
  use ShadcnLiveWeb, :live_view

  def render(assigns) do
    ~H"""
    <Page.page route={:themes}>
      <h1>Themes</h1>
    </Page.page>
    """
  end
end
