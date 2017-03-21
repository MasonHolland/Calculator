class Calculator
attr_reader :total

  def initialize
    @total = 0
  end
  
  def add(x)
    @total += x
    self
  end
  
  def subtract(x)
    @total -= x
    self
  end
  
  def clear
    @total = 0
  end

end


