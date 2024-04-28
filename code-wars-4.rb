=begin
Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

moveZeros [1,2,0,1,0,1,0,3,0,1] #-> [1,2,1,1,3,1,0,0,0,0]
=end

def moveZeros(arr)
  result = []
  zeros = arr.select{|n| n==0}
  non_zeros = arr.select{|n| n!=0}
  result << non_zeros << zeros
  result.flatten
end

arr = [1,2,0,1,0,1,0,3,0,1]

puts moveZeros(arr).inspect
