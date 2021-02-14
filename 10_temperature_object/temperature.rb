class Temperature

  def initialize (options)
    @fahrenheit = options[:f] || options[:c] * (9.0/5.0) + 32
  end

  def self.from_celsius celsius
    new(:c => celsius)
  end

  def self.from_fahrenheit fahrenheit
    new(:f => fahrenheit)
  end


  def in_fahrenheit #Getters
    @fahrenheit
  end
  def in_celsius
    (@fahrenheit - 32) * 5.0 / 9.0
  end

end

class Celsius < Temperature
  def initialize(celsius)
    super(:c => celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(:f => fahrenheit)
  end
end