defmodule ShadcnLiveWeb.CommandMenu do
  use Phoenix.Component

  def command_menu(assigns) do
    ~H"""
    <input
      type="text"
      name="command"
      value=""
      placeholder="Search Documentation..."
      class="text-sm h-8 rounded-md mr-6 w-56 focus:outline-none"
    />
    """
  end
end
