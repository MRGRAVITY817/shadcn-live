defmodule ShadcnLiveWeb.DocsComponents do
  use Phoenix.Component

  @paths %{
    main_nav: [
      %{
        title: "Documentation",
        href: "/docs"
      },
      %{
        title: "Components",
        href: "/docs/components/accordion"
      },
      %{
        title: "Themes",
        href: "/themes"
      },
      %{
        title: "Examples",
        href: "/examples"
      },
      %{
        title: "Figma",
        href: "/docs/figma"
      },
      %{
        title: "GitHub",
        href: "https://github.com/shadcn/ui",
        external: true
      },
      %{
        title: "Twitter",
        href: "https://twitter.com/shadcn",
        external: true
      }
    ],
    sidebar_nav: [
      %{
        title: "Getting Started",
        items: [
          %{
            title: "Introduction",
            href: "/docs",
            items: []
          },
          %{
            title: "Installation",
            href: "/docs/installation",
            items: []
          },
          %{
            title: "components.json",
            href: "/docs/components-json",
            items: []
          },
          %{
            title: "Theming",
            href: "/docs/theming",
            items: []
          },
          %{
            title: "Dark mode",
            href: "/docs/dark-mode",
            items: []
          },
          %{
            title: "CLI",
            href: "/docs/cli",
            items: []
          },
          %{
            title: "Typography",
            href: "/docs/components/typography",
            items: []
          },
          %{
            title: "Figma",
            href: "/docs/figma",
            items: []
          },
          %{
            title: "Changelog",
            href: "/docs/changelog",
            items: []
          }
        ]
      },
      %{
        title: "Components",
        items: [
          %{
            title: "Accordion",
            href: "/docs/components/accordion",
            items: []
          },
          %{
            title: "Alert",
            href: "/docs/components/alert",
            items: []
          },
          %{
            title: "Alert Dialog",
            href: "/docs/components/alert-dialog",
            items: []
          },
          %{
            title: "Aspect Ratio",
            href: "/docs/components/aspect-ratio",
            items: []
          },
          %{
            title: "Avatar",
            href: "/docs/components/avatar",
            items: []
          },
          %{
            title: "Badge",
            href: "/docs/components/badge",
            items: []
          },
          %{
            title: "Button",
            href: "/docs/components/button",
            items: []
          },
          %{
            title: "Calendar",
            href: "/docs/components/calendar",
            items: []
          },
          %{
            title: "Card",
            href: "/docs/components/card",
            items: []
          },
          %{
            title: "Carousel",
            href: "/docs/components/carousel",
            items: [],
            label: "New"
          },
          %{
            title: "Checkbox",
            href: "/docs/components/checkbox",
            items: []
          },
          %{
            title: "Collapsible",
            href: "/docs/components/collapsible",
            items: []
          },
          %{
            title: "Combobox",
            href: "/docs/components/combobox",
            items: []
          },
          %{
            title: "Command",
            href: "/docs/components/command",
            items: []
          },
          %{
            title: "Context Menu",
            href: "/docs/components/context-menu",
            items: []
          },
          %{
            title: "Data Table",
            href: "/docs/components/data-table",
            items: []
          },
          %{
            title: "Date Picker",
            href: "/docs/components/date-picker",
            items: []
          },
          %{
            title: "Dialog",
            href: "/docs/components/dialog",
            items: []
          },
          %{
            title: "Drawer",
            href: "/docs/components/drawer",
            items: [],
            label: "New"
          },
          %{
            title: "Dropdown Menu",
            href: "/docs/components/dropdown-menu",
            items: []
          },
          %{
            title: "Form",
            href: "/docs/components/form",
            items: []
          },
          %{
            title: "Hover Card",
            href: "/docs/components/hover-card",
            items: []
          },
          %{
            title: "Input",
            href: "/docs/components/input",
            items: []
          },
          %{
            title: "Label",
            href: "/docs/components/label",
            items: []
          },
          %{
            title: "Menubar",
            href: "/docs/components/menubar",
            items: []
          },
          %{
            title: "Navigation Menu",
            href: "/docs/components/navigation-menu",
            items: []
          },
          %{
            title: "Pagination",
            href: "/docs/components/pagination",
            items: [],
            label: "New"
          },
          %{
            title: "Popover",
            href: "/docs/components/popover",
            items: []
          },
          %{
            title: "Progress",
            href: "/docs/components/progress",
            items: []
          },
          %{
            title: "Radio Group",
            href: "/docs/components/radio-group",
            items: []
          },
          %{
            title: "Resizable",
            href: "/docs/components/resizable",
            items: [],
            label: "New"
          },
          %{
            title: "Scroll Area",
            href: "/docs/components/scroll-area",
            items: []
          },
          %{
            title: "Select",
            href: "/docs/components/select",
            items: []
          },
          %{
            title: "Separator",
            href: "/docs/components/separator",
            items: []
          },
          %{
            title: "Sheet",
            href: "/docs/components/sheet",
            items: []
          },
          %{
            title: "Skeleton",
            href: "/docs/components/skeleton",
            items: []
          },
          %{
            title: "Slider",
            href: "/docs/components/slider",
            items: []
          },
          %{
            title: "Sonner",
            href: "/docs/components/sonner",
            items: [],
            label: "New"
          },
          %{
            title: "Switch",
            href: "/docs/components/switch",
            items: []
          },
          %{
            title: "Table",
            href: "/docs/components/table",
            items: []
          },
          %{
            title: "Tabs",
            href: "/docs/components/tabs",
            items: []
          },
          %{
            title: "Textarea",
            href: "/docs/components/textarea",
            items: []
          },
          %{
            title: "Toast",
            href: "/docs/components/toast",
            items: []
          },
          %{
            title: "Toggle",
            href: "/docs/components/toggle",
            items: []
          },
          %{
            title: "Toggle Group",
            href: "/docs/components/toggle-group",
            items: []
          },
          %{
            title: "Tooltip",
            href: "/docs/components/tooltip",
            items: []
          }
        ]
      }
    ]
  }

  attr :current_path, :string, required: true

  def docs_sidebar_nav(assigns) do
    assigns = assign(assigns, :items, @paths)

    ~H"""
    <div class="w-72 py-8">
      <%= for item <- @items.sidebar_nav do %>
        <div class="pb-4">
          <h4 class="mb-1 rounded-md py-2 text-sm font-semibold">
            <%= item.title %>
          </h4>
          <.docs_sidebar_nav_items items={item.items} current_path={@current_path} />
        </div>
      <% end %>
    </div>
    """
  end

  attr :items, :list, default: []
  attr :current_path, :string, required: true

  defp docs_sidebar_nav_items(assigns) do
    ~H"""
    <div class="flex flex-col items-start justify-start gap-3">
      <%= for item <- @items do %>
        <.nav_item href={item.href} title={item.title} current_path={@current_path} />
      <% end %>
    </div>
    """
  end

  attr :href, :string
  attr :title, :string
  attr :current_path, :string, required: true

  defp nav_item(assigns) do
    assigns =
      assigns
      |> assign(
        :style,
        "font-light text-sm " <>
          if assigns.current_path == assigns.href do
            "text-gray-900"
          else
            "text-gray-500"
          end
      )

    ~H"""
    <a href={@href} class={@style}>
      <%= @title %>
    </a>
    """
  end

  attr :current_path, :string, required: true

  def docs_breadcrumb(assigns) do
    [current_section | _] = assigns.current_path |> String.split("/") |> Enum.reverse()

    assigns = assign(assigns, :current_section, current_section |> String.capitalize())

    ~H"""
    <div class="text-sm font-light text-gray-500 flex items-center justify-start gap-2">
      <p>
        Docs
      </p>
      <p>
        >
      </p>
      <span class="text-gray-900 font-normal">
        <%= @current_section %>
      </span>
    </div>
    """
  end
end
