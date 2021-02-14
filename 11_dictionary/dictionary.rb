class Dictionary

  def initialize
    @entries = Hash.new
  end

  def entries
    @entries
  end

  def add (*param)
    if(param.first.class == Hash) then
      @entries = @entries.merge(param.first)
    else
      @entries[param.first] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end
  def include?(key)
    @entries.include?(key)
  end
  # idk, how it works((
  def find partial_word
    result = {}
    entries.each_pair do |key, definition|
      if key =~ /^#{partial_word}/
        result[key] = definition
      end
    end
    result
  end
  # my version
  # def find(key)
  #   print @entries.values_at(key)
  #     if(@entries.values_at(key) == [nil]) then
  #       return {}
  #     else
  #       return {key => @entries.values_at(key).first}
  #     end
  #
  #
  #     return result
  # end


  def printable
    entries.map do |key_val|
      %Q{[#{key_val.first}] "#{key_val.last}"}
    end.sort.join("\n")
  end

end

