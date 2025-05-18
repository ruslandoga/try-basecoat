defmodule BasecoatWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use BasecoatWeb, :html

  def home(assigns) do
    ~H"""
    <Layouts.flash_group flash={@flash} />

    <div class="container mx-auto p-4">
      <.component_preview name="Alert">
        <div class="max-w-md">
          <.alert />
        </div>
      </.component_preview>
    </div>
    """
  end

  defp component_preview(assigns) do
    ~H"""
    <div>
      <h2 class="text-xl font-semibold mb-4">{@name} Preview</h2>
      <div>{render_slot(@inner_block)}</div>
    </div>
    """
  end

  defp alert(assigns) do
    ~H"""
    <div class="alert">
      <svg
        xmlns="http://www.w3.org/2000/svg"
        width="24"
        height="24"
        viewBox="0 0 24 24"
        fill="none"
        stroke="currentColor"
        stroke-width="2"
        stroke-linecap="round"
        stroke-linejoin="round"
      >
        <circle cx="12" cy="12" r="10" /><path d="m9 12 2 2 4-4" />
      </svg>
      <h2>Success! Your changes have been saved</h2>
      <section>This is an alert with icon, title and description.</section>
    </div>
    """
  end
end
