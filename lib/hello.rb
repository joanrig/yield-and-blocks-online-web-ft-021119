# def hello_t(array)
#   if block_given?
#     i = 0
#
#     while i < array.length
#       yield (array[i])
#       i=i+1
#     end
#
#     array
#   else
#     puts "Hey! No block was given!"
#   end
# end
#
# # call your method here!
#
# hello_t(["Tim", "Tom", "Jim"]) do |name|
#   if name.start_with?("T")
#     puts "Hi, #{name}"
#   end
# end

word = "t\u00FCk\u00F6r"
def dative(word)
  front_vowels = "e, é, i, í, ö, ő, ü, ű".split(" ")
  back_vowels = "a, á, o, ó, u, ú".split(" ")
  all_vowels = (front_vowels<< back_vowels).flatten

  array = word.split
  binding.pry
  array.each do |letter|
    if !all_vowels.include?(letter)
      array.delete(letter)
      if front_vowels.include?(array.last)
        dative = "#{word}nek"
        return dative
      else
        dative = "#{word}nak"
        return dative
      end
    end
  end
end
