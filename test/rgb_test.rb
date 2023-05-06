require 'minitest/autorun'
require_relative '../lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal "#ffffff", to_hex(255, 255, 300), 'Handle values that are out of bounds'
    assert_equal "#9400d3", to_hex(148, 0, 211)
    assert_equal "#9400d3", to_hex(148, -20, 211), "Handle negative numbers"
  end

  def test_to_rgb
    assert_equal [0, 0, 0], to_rgb('#000000')
    assert_equal [255, 255, 255], to_rgb('#ffffff')
    assert_equal [148, 0, 211], to_rgb('#9400d3')
  end
end
