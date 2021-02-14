def echo(string)
  string
end



def shout(string)
  modify_string = ""
  string.each_char do |char|
    if(char.ord <= 122 && char.ord >= 97)
      modify_string +=  (char.ord-32).chr
    else
      modify_string += char
     end
  end
  modify_string
end

def repeat(string, count_of_repeat = 2)
  modify_string = ''
  for i in 1..count_of_repeat do
    modify_string +=string
    if (i != count_of_repeat)
      modify_string +=' '
    end
  end
  modify_string
end
def start_of_word(string, count_of_letter)
  string[0,count_of_letter]
end

def first_word(string)
  string.partition(" ").first
end



def titleize(string)
  modify_string = ''
  string.scan(/\w+/).each.with_index do |word, index|
    if ((word.length <= 4 && (index != 0 && index != (string.scan(/\w+/).length - 1) )) && (word[0].ord >= 97 && word[0].ord <= 122)) then
      modify_string += word
    else
        modify_string += (word[0].ord - 32).chr + word[1,word.length]
    end
    modify_string+= ' '
  end
  modify_string =  modify_string[0, modify_string.length-1]
  modify_string
end
