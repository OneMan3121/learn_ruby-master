class Timer
  def initialize
    self.seconds = 0.0

  end

  def seconds=(second)
    @seconds = second
  end

  def seconds
    @seconds
  end

  def time_string
    second = @seconds
    min = second / 60
    second ='%02d' % (second % 60)
    hour = min / 60
    min ='%02d' % (min % 60)
    hour ='%02d' % (hour % 24)
    "#{hour}:#{min}:#{second}"
  end
end

