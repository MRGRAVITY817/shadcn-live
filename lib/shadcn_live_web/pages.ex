defmodule ShadcnLiveWeb.Pages do
  @moduledoc false

  alias ShadcnLiveWeb.Page
  use ShadcnLiveWeb, :live_view

  def render(assigns) do
    ~H"""
    <Page.page route={:main} current_path={@current_uri.path}>
      <div class="mt-20 pl-8">
        <h1 class="font-extrabold text-6xl">
          Your favorite UI library,<br /> now on
          <span class="text-indigo-500">Phoenix LiveView.</span>
        </h1>
        <p class="text-3xl font-light text-gray-500 mt-6 max-w-3xl">
          Dashboard, cards, authentication. Some examples built using the components. Use this as a guide to build your own.
        </p>
      </div>
    </Page.page>
    """
  end
end
