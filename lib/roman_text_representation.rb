class RomanTextRepresentation


  def self.of_number(a_number)

    a_string = ""
    units = a_number%10
    tens = (a_number/10)%10
    hundreds = (a_number/100)%10

    convert_digit_using(hundreds, a_string, 'C', 'D', 'M')
    convert_digit_using(tens, a_string, 'X', 'L', 'C')
    convert_digit_using(units, a_string, 'I', 'V', 'X')
    a_string

  end

  def self.convert_digit_using(a_number, a_string, as_one, as_five, as_ten)
    if a_number.between?(1, 3)
      for i in 1..a_number
        a_string.concat(as_one)
      end
    end
    if a_number==4
      a_string.concat(as_one).concat(as_five)
    end
    if a_number.between?(5, 8)
      a_string.concat(as_five)
      for i in 5..a_number-1
        a_string.concat(as_one)
      end
    end
    if a_number==9
      a_string.concat(as_one).concat(as_ten)
    end
    a_string
  end
end