defmodule ShadcnLiveWeb.CommandMenu do
  use Phoenix.Component

  def command_menu(assigns) do
    ~H"""
    <input type="text" placeholder="Command menu" />
    """
  end
end
