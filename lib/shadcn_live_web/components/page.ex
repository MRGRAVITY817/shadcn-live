defmodule ShadcnLiveWeb.Page do
  alias ShadcnLiveWeb.DocsSidebarNav
  alias ShadcnLiveWeb.SiteHeader
  use Phoenix.Component

  attr :route, :atom, default: :main
  attr :current_path, :string, required: true
  slot :inner_block, required: true

  def page(assigns) do
    ~H"""
    <SiteHeader.site_header route={@route} />
    <main class="px-4 sm:px-6 lg:px-8 xl:px-16">
      <div class="mx-auto max-w-screen-2xl flex justify-start items-start">
        <%= if @route == :docs or @route == :components do %>
          <DocsSidebarNav.docs_sidebar_nav current_path={@current_path} />
        <% end %>
        <div class="py-8">
          <%= render_slot(@inner_block) %>
        </div>
      </div>
    </main>
    """
  end
end
