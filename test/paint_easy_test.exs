defmodule PaintEasyTest do
  use ExUnit.Case
  doctest PaintEasy

  describe "new_p1/2" do
    #TODO: add default value to create
    @tag pending: true
    test "create new image with width and height" do
      width = 10
      height = 10
      assert {:ok, image} = PaintEasy.new_p1(width, height)

      assert image.code == "P1"
      assert image.width == width
      assert image.height == height
      assert image.pixel_limit == 1
    end

    @tag pending: true
    test "create new image with default values" do
      assert {:ok, image} = PaintEasy.new_p1()

      assert image.code == "P1"
      assert image.width == 1000
      assert image.height == 1000
      assert image.pixel_limit == 1
    end
  end
end
