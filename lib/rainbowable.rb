module Rainbowable
  def rainbow
    # get string expression of myself
    str = self.to_s

    # prepare the loop counter and array to store colored characters
    count = 0
    colored_chars = []

    # loop the string by character
    str.each_char do |char|
      # color code is 31 to 36
      color = 31 + count % 6

      # prepend ANSI escape sequence to each char
      colored_chars << "\e[#{color}m#{char}"

      count += 1
    end

    ret = colored_chars.join

    # append escape sequence to reset color
    ret + "\e[0m"
  end
end
