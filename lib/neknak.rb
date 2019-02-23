def dative(word="t\u00FCk\u00F6r")
  front_vowels = "e, é, i, í, ö, ő, ü, ű".split(" ")
  back_vowels = "a, á, o, ó, u, ú".split(" ")
  all_vowels = (front_vowels<< back_vowels).flatten

  array = word.split
  array.each do |letter|
    if !all_vowels.include?(letter)
      array.delete(letter)
      if front_vowels.include?(array.last)
        dative = "#{word}nek"
        return dative
      else
        dative = "#{word}nak"
        return dative
        binding.pry
      end
    end
  end
end
