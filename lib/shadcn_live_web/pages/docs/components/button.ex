defmodule ShadcnLiveWeb.Pages.Docs.Components.Button do
  alias ShadcnLiveWeb.Page
  use ShadcnLiveWeb, :live_view

  def render(assigns) do
    ~H"""
    <Page.page route={:components} current_path={@current_uri.path}>
      <h1 class="font-black text-4xl">Button</h1>
    </Page.page>
    """
  end
end
