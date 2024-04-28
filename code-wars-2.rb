# The Hashtag Generator
# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# If the final result is longer than 140 chars it must return false.
# If the input or the result is an empty string it must return false.
=begin
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false
=end

def generateHashtag(str)
  cleaned_str = str.strip.split.map(&:capitalize).join
  return false if cleaned_str.length > 139 || cleaned_str.length == 0
  "##{cleaned_str}"
end

str = " Hello there thanks for trying     my Kata"

puts generateHashtag(str)
