class StringOperation

  # arg is a list of number separated by a delimiter
  def add(arg)
    return 0 if arg == ''

    delimiter = ','
    if arg.include?("\n")
      raise 'invalid argument' if arg[-1] == "\n"
    end

    numbers = arg.split(/[\n,]/).map(&:strip) # separate numbers based on the delimiter and stip away any white spaces
    numbers = numbers.map(&:to_i) # type conversion of all the numbers to integer from string
    numbers.sum # return their total sum
  end
end
