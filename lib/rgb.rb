def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    # apply max and min
    n = 255 if n > 255
    n = 0 if n < 0

    # convert to hex
    n.to_s(16).rjust(2, '0')
  end
end
