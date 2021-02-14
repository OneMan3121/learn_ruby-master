def add(a,b)
  a + b
end

def subtract(a,b)
  a-b
end

def sum(array)
  _sum = 0.0
  array.each do |n|
    _sum += n;
  end;
  _sum
end

def multiply(array)
    _multiply = 0
  array.each do |n|
    if _multiply == 0 then
       _multiply = 1
     end
    _multiply *= n;
  end;
  _multiply
end

def power(a,b)
  a**b
end

def factorial(a)
  factorial = 1
  for i in 1..a
  factorial *= i
  end
  factorial
end


factorial(5)
