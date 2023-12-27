defmodule ShadcnLiveWeb.MainNav do
  use Phoenix.Component

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
        <a href="/docs" class="transition-colors hover:text-foreground/80 text-foreground/60">
          Docs
        </a>
        <a
          href="/docs/components/accordion"
          class="transition-colors hover:text-foreground/80 text-foreground/60"
        >
          Components
        </a>
        <a href="/themes" class="transition-colors hover:text-foreground/80 text-foreground/60">
          Themes
        </a>
        <a href="/examples" class="transition-colors hover:text-foreground/80 text-foreground/60">
          Examples
        </a>
        <a
          href="https://github.com/MRGRAVITY817/shadcn-live"
          class="transition-colors hover:text-foreground/80 text-foreground/60"
        >
          GitHub
        </a>
      </nav>
    </div>
    """
  end
end
