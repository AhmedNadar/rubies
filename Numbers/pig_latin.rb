def translate(sentence)
 sentence.gsub /([^\Waeiou]*qu[^\Waeiou]*|[^\Waeiou]*)(\w+)/, '\2\1ay'
end

puts "Enter a string: "
string = gets.strip
puts "#{translate(string)}"


# /([^\Waeiou]*)(\w+)/, '\2\1ay'
# Add any sequence of consonants (no punctuation/whitespace/vowels) from the
# start of the word to the first group
# Add the rest of the word to the second group
# Switch them around and add ay to the end
# The qu bit is a special case that you have to check for specifically,
# otherwise u and any following consonants aren't carried to the end of the
# word.
