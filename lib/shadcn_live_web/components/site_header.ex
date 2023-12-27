defmodule ShadcnLiveWeb.SiteHeader do
  alias ShadcnLiveWeb.MainNav
  alias ShadcnLiveWeb.CommandMenu
  alias ShadcnLiveWeb.Icons
  use Phoenix.Component

  attr :route, :atom

  def site_header(assigns) do
    ~H"""
    <header class="flex pl-8 justify-center sticky top-0 z-50 w-full border-b border-border/40 bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60">
      <div class="container flex h-14 max-w-screen-2xl items-center">
        <MainNav.main_nav route={@route} />
        <div class="flex flex-1 items-center justify-between space-x-2 md:justify-end">
          <div class="w-full flex-1 md:w-auto md:flex-none">
            <CommandMenu.command_menu />
          </div>
          <nav class="flex items-center">
            <a href="https://github.com/MRGRAVITY817/shadcn-live" target="_blank" rel="noreferrer">
              <div class="w-9 px-0">
                <Icons.github class="h-4 w-4" />
                <span class="sr-only">GitHub</span>
              </div>
            </a>
          </nav>
        </div>
      </div>
    </header>
    """
  end
end
