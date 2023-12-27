defmodule ShadcnLiveWeb.Page do
  alias ShadcnLiveWeb.SiteHeader
  use Phoenix.Component

  attr :route, :atom, default: :main
  slot :inner_block, required: true

  def page(assigns) do
    ~H"""
    <SiteHeader.site_header route={@route} />
    <main class="px-4 py-20 sm:px-6 lg:px-8">
      <div class="mx-auto max-w-2xl">
        <%= render_slot(@inner_block) %>
      </div>
    </main>
    """
  end
end
