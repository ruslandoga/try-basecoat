defmodule BasecoatWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use BasecoatWeb, :html

  def home(assigns) do
    ~H"""
    <Layouts.flash_group flash={@flash} />

    <div class="container mx-auto p-4 space-y-4">
      <.component_preview name="Alert">
        <div class="max-w-md">
          <.alert title="Success! Your changes have been saved">
            This is an alert with icon, title and description.
          </.alert>
        </div>
      </.component_preview>

      <.component_preview name="Badge">
        <.badge>New</.badge>
      </.component_preview>

      <.component_preview name="Button">
        <.new_button>Button</.new_button>
      </.component_preview>

      <.component_preview name="Card">
        <div class="max-w-sm">
          <.card />
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
      <h2>{@title}</h2>
      <section>{render_slot(@inner_block)}</section>
    </div>
    """
  end

  defp badge(assigns) do
    ~H"""
    <span class="badge">{render_slot(@inner_block)}</span>
    """
  end

  defp new_button(assigns) do
    ~H"""
    <button class="btn">{render_slot(@inner_block)}</button>
    """
  end

  def card(assigns) do
    ~H"""
    <div class="card w-full">
      <header>
        <h2>Login to your account</h2>
        <p>Enter your details below to login to your account</p>
      </header>
      <section>
        <form class="form grid gap-6">
          <div class="grid gap-2">
            <label for="demo-card-form-email">Email</label>
            <input type="email" id="demo-card-form-email" />
          </div>
          <div class="grid gap-2">
            <div class="flex items-center gap-2">
              <label for="demo-card-form-password">Password</label>
              <a href="#" class="ml-auto inline-block text-sm underline-offset-4 hover:underline">
                Forgot your password?
              </a>
            </div>
            <input type="password" id="demo-card-form-password" />
          </div>
        </form>
      </section>
      <footer class="flex flex-col items-center gap-2">
        <button type="button" class="btn w-full">Login</button>
        <button type="button" class="btn-outline w-full">Login with Google</button>
        <p class="mt-4 text-center text-sm">
          Don't have an account? <a href="#" class="underline-offset-4 hover:underline">Sign up</a>
        </p>
      </footer>
    </div>
    """
  end
end
