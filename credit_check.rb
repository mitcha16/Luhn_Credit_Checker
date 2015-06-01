class Credit_Checker

  def check(number)
    if number.chars.size != 16
      print "This is not a valid input"
      return nil
    end

    numbers=convert_to_integer_array(number.chars)
    convert_even_index(numbers)
    check_total(numbers)

  end

  def convert_even_index(numbers)

    numbers.size.times do |index|

      if index.even? && numbers[index] * 2 > 9
        doubled = double(numbers[index])
        numbers[index] = (doubled.to_s[0].to_i + doubled.to_s[1].to_i)
      elsif index.even?
        numbers[index] = double(numbers[index])
      end
    end


  end


  def check_total(numbers)

    total = 0
    numbers.each do |element|
      total += element
    end

    if total % 10 == 0
      puts "valid"
      return "valid"
    else
      puts "invalid"
      return "invalid"
    end

  end

  def convert_to_integer_array(numbers)

    numbers.map do |element|
      element.to_i
    end

  end

  def double (input)

    input * 2

  end

end


 Credit_Checker.new.check("6011797668867828")
