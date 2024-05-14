class StringOperation

  # arg is a list of number separated by a delimiter in string format
  def add(arg)
    return 0 if arg == ''

    delimiter = ','
    if arg.include?("\n")
      raise 'invalid argument' if arg[-1] == "\n"
    end
    # fetch delimiter when it is other than (,)
    delimiter = arg[2] if arg.start_with?("//") 

    numbers = arg.split(/[\n#{delimiter}]/).map(&:strip) # separate numbers based on the delimiter and stip away any white spaces
    numbers = numbers.map(&:to_i) # type conversion of all the numbers to integer from string
    
    negative_numbers = numbers.select{ |num| num < 0 } # look for negative numbers
    raise "negative numbers not allowed #{negative_numbers.join(',')}" if negative_numbers.any?
    
    numbers.sum # return their total sum
  end
end
