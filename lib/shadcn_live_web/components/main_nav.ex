defmodule ShadcnLiveWeb.MainNav do
  use Phoenix.Component

  attr :route, :atom

  def main_nav(assigns) do
    ~H"""
    <div class="mr-4 hidden md:flex">
      <a href="/" class="mr-6 flex items-center space-x-2">
        <ShadcnLiveWeb.Icons.logo class="h-6 w-6" />
        <span class="hidden font-bold sm:inline-block">
          shadcn-live
        </span>
      </a>
      <nav class="flex items-center gap-6 text-sm">
        <a href="/docs" class={nav_style(@route == :docs)}>
          Docs
        </a>
        <a href="/docs/components/accordion" class={nav_style(@route == :components)}>
          Components
        </a>
        <a href="/themes" class={nav_style(@route == :themes)}>
          Themes
        </a>
        <a href="/examples" class={nav_style(@route == :examples)}>
          Examples
        </a>
        <a href="https://github.com/MRGRAVITY817/shadcn-live" class={nav_style(@route == :github)}>
          GitHub
        </a>
      </nav>
    </div>
    """
  end

  defp nav_style(is_selected) do
    if is_selected do
      "transition-colors text-slate-900"
    else
      "transition-colors hover:text-slate-900 text-slate-500"
    end
  end
end
