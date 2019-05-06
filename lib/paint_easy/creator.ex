defmodule PaintEasy.Creator do
  @moduledoc """
  Module to create new images
  """
  alias PaintEasy.Image

  @width 1000
  @height 1000

  @pbm_format %Image{
    code: "P1",
    pixel_limit: 1,
    width: @width,
    height: @height
  }

  def new_pbm(params \\ []) do
    resolution = get_resolution(params)
    image = Map.merge(@pbm_format, resolution)

    {:ok, image}
  end

  defp get_resolution(params) do
    default_resolution = [width: @width, height: @height]

    default_resolution
    |> Keyword.merge(params)
    |> Enum.into(%{})
  end
end