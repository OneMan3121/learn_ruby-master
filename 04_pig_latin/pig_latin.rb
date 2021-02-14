ENGLISH_VOWELS = ['A','E', 'I', 'O','U']

def translate(string)
  _modify_string = ''
  string.scan(/\w+/).each do |word|
    _i = 0;

    while ( _i < ENGLISH_VOWELS.length)
      if(word[0].ord == ENGLISH_VOWELS[_i].ord || word[0].ord == (ENGLISH_VOWELS[_i].ord + 32) ) then
        break
      end
      _i+=1
      if(_i == ENGLISH_VOWELS.length) then
        if((word[0].ord == 81 ||word[0].ord == 81 + 32) && (word[1].ord == 85 || word[1].ord == 85 + 32) ) then
          word = word[1,word.length] + word[0]
          word = word[1,word.length] + word[0]
          _i = 0;
          else
        word = word[1,word.length] + word[0]
        _i = 0;
        end
        end
    end
    _modify_string += word + 'ay '
  end
  _modify_string = _modify_string[0,_modify_string.length-1]
  _modify_string
end
print(translate("quiet")+"\n\n")

