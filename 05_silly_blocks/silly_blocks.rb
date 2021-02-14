def reverser
  _modifyString = ''
  yield.scan(/\w+/) do |word|
    _modifyString += word.reverse + ' '
  end
  _modifyString = _modifyString[0,_modifyString.length-1]
end
def adder(num = 1)
  yield + num

end
def repeater(_countOfExecutes = 1)
  for i in 1.._countOfExecutes
    yield if block_given?
  end
end

