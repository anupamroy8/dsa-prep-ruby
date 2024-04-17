# Valid Parentheses

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  matchers = {
    ")" => "(",
    "]" => "[",
    "}" => "{"
  }

  s.chars.each do |c|
    if matchers.values.include?(c)
      stack.push(c)
    elsif matchers.include?(c)
      return false if matchers[c] != stack.pop()
    end
  end  
  stack.empty?
end

s = "{()}{}[]((()))"

print is_valid(s)
