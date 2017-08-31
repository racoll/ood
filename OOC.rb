class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end


  def subtract(number_1, number_2)
    number_1 - number_2
  end

end


class Display
  def display_answer(answer)
    "The Answer is: #{ answer }"
  end
end


# copy and paste the above into pry in terminal.
# then write the below and see what happens

calc = Calculator.new
printer = Printer.new

answer = calc.add(1,1)
printer.print_answer(answer)
