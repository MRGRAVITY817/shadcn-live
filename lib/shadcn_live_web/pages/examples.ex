defmodule ShadcnLiveWeb.Pages.Examples do
  @moduledoc false

  alias ShadcnLiveWeb.Page
  use ShadcnLiveWeb, :live_view

  def render(assigns) do
    ~H"""
    <Page.page route={:examples} current_path={@current_uri.path}>
      <h1>Themes</h1>
    </Page.page>
    """
  end
end
