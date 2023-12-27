defmodule ShadcnLiveWeb.Pages.Docs.Components.Accordion do
  alias ShadcnLiveWeb.Page
  use ShadcnLiveWeb, :live_view

  def render(assigns) do
    ~H"""
    <Page.page route={:components}>
      <h1>Accordion</h1>
    </Page.page>
    """
  end
end
