gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'calc'


class CalcTest < Minitest::Test

  def test_it_can_add
   calculator = Calculator.new
   assert_equal 49, calculator.add(49).total
  end

  def test_it_can_add_multiple_numbers
   calculator = Calculator.new
   assert_equal 158, calculator.add(12).add(146).total
  end

  def test_it_can_subtract
    calculator = Calculator.new
    assert_equal -9, calculator.subtract(9).total
  end

  def test_it_can_subtract_multiple_numbers
    calculator = Calculator.new
    assert_equal -30, calculator.subtract(11).subtract(19).total
  end

  def test_it_can_add_and_then_subtract
   calculator = Calculator.new
   assert_equal 6, calculator.add(12).subtract(6).total
  end


  def test_it_can_total
    calculator = Calculator.new
    assert_equal 0, calculator.total
  end

  def test_it_can_clear
    calculator = Calculator.new
    assert_equal 0,calculator.clear
  end

end

