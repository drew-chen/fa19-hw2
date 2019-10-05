class Foobar
  def already_in(array, element)
    for a in array do
      return true if a.equal?(element)
    end
    return false
  end
  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    result = []
    for element in a do
      result_element = element.to_i  + 2
      unless result_element.odd? or result_element > 9 or result.include? result_element
        result << result_element
      end
    end
    sum = 0
    for result_element in result do
      sum += result_element
    end
    sum
  end
end

