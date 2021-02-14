class Book
  ARTICLES = ["and", "the", "of", "in","a","an"]
  def title=(string ) # Setter
  modify_string = ''
    string.scan(/\w+/).each.with_index do |word, index|
    if ((word.length <= 2 && (index != 0 && index != (string.scan(/\w+/).length - 1) )) && (word[0].ord >= 97 && word[0].ord <= 122)) then
      if(word == "i")  then
        modify_string += "I" + ' '
        next
      end
      modify_string += word
    else
      if((word[0].ord >= 33 && word[0].ord <= 64)) then
        modify_string += word + ' '
        next
      end
      isArticle = false
      ARTICLES.each do |article|
        if(article == word && (index != 0 && index != (string.scan(/\w+/).length - 1))) then
          modify_string += word
          isArticle = true
          break
        end
      end
      if(!isArticle)
        modify_string += (word[0].ord - 32).chr + word[1,word.length]
      end
    end
    modify_string+= ' '
  end
  modify_string =  modify_string[0, modify_string.length-1]
  @title = modify_string
  end

  def title # Getter
    @title
  end
end

@book = Book.new
@book.title = "what i wish i knew when i was 20"
print(@book.title)

