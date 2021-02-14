class Array


  def sum
    num = 0
    self.each do |value|
      num += value
    end
    num
  end

  def square
    map{|n| n*n}
  end

  def square!
    map!{|n| n*n}
  end

end