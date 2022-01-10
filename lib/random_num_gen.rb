# frozen_string_literal: true

require_relative "random_num_gen/version"

module RandomNumGen
  class Error < StandardError; end
  def lessthan(num)
    return rand(0..num)
  end

  def between(num1,num2)
    return rand(num1..num2)
  end

  def arr(arrsize,num)
    return arrsize.times.map { rand(num) }
  end

  def arrbetween(arrsize,num1,num2)
    return arrsize.times.map { rand(num1..num2) }
  end
end
