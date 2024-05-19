=begin
String reduction

In this Kata, we are going to see how a Hash (or Map or dict) can be used to keep track of characters in a string.

Consider two strings "aabcdefg" and "fbd". How many characters do we have to remove from the first string to get the second string? Although not the only way to solve this, we could create a Hash of counts for each string and see which character counts are different. That should get us close to the answer. I will leave the rest to you.

For this example, solve("aabcdefg","fbd") = 5. Also, solve("xyz","yxxz") = 0, because we cannot get second string from the first since the second string is longer.

=end

def solve(a,b)
  return 0 if b.length > a.length

  diff_count = 0
  a_hash = Hash.new(0)
  a.each_char { |char| a_hash[char] += 1}
  
  b_hash = Hash.new(0)
  b.each_char { |char| b_hash[char] += 1}
  
  b.each_char do |c|
    if a_hash[c] > 0
      a_hash[c] -= 1
    else
      return 0
    end
  end
  
  a_hash.each do |c, count|
    diff_count += count
  end
  
  diff_count
end



# Most clever solution

def solve(a,b)
  (a.chars|b.chars).inject(0){|s,x|
  s+(return 0 if b.count(x)>a.count(x)
  a.count(x)-b.count(x))
  }
end

=begin
(a.chars | b.chars) combines the characters of both strings a and b into an array, removing duplicates.

.inject(0) initializes the accumulator s to 0 for the summation operation.

{ |s, x| ... } is a block that takes two parameters: the accumulator s and the current element x from the array.
return 0 if b.count(x) > a.count(x) checks if the count of character x in string b is greater than its count in string a. If it is, it means we can't obtain string b from string a, so the function immediately returns 0.

a.count(x) - b.count(x) calculates the difference in counts of character x between strings a and b.

s + ... adds this difference to the accumulator s.

The result of the .inject method is the final value of the accumulator s, which represents the total number of characters that need to be removed from string a to obtain string b.
=end