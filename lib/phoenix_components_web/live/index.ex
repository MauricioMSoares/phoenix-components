defmodule PhoenixComponentsWeb.Index do
  @moduledoc """
  Index live module.
  """

  use PhoenixComponentsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
