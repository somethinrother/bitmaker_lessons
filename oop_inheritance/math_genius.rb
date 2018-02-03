require_relative 'multilinguist.rb'

class MathGenius < Multilinguist

  def report_total(integer_array)
    total = 0
    integer_array.each do |integer|
      total += integer
    end
    puts say_in_local_language("Your total is #{total}.")
  end

end

me = MathGenius.new

num1 = [1, 17, 87, 3, 45, 66]
num2 = [2, 3, 6, 18, 22, 1]
num3 = [2, 2, 2, 3, 4, 5]

me.report_total(num1)
me.travel_to("France")
me.report_total(num2)
me.travel_to("Poland")
me.report_total(num3)
