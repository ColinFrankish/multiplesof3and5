class ThreeAndFive

  def times_three(n)
    if n % 3 == 0 
      return n
    end
  end
  def times_five(n)
    if n % 5 == 0
      return n
    end
  end
  def filter_numbers(n)
    if times_three(n) || times_five(n)
      return n
    end
  end
  def range
    (1..1000).map { |i| filter_numbers(i)}
  end
  
  def total
    result = []
    result << range.compact.inject(:+)
  end
end 
puts "Here are all multiples of 3 and 5 between 0 and 1000:"
puts ThreeAndFive.new.range
puts "And here is the grand total of those numbers"
puts ThreeAndFive.new.total