def merge(intervals)
  intervals.sort_by! {|interval| interval[0]}

  result = []
  result.push(intervals[0])

  (1...intervals.size).each do |i|
      if result[-1][1] >= intervals[i][0] 
          result[-1][1] = [result[-1][1],intervals[i][1]].max
      else
          result.push(intervals[i])
      end
  end
  result
end

intervals = [[1,3],[2,6],[8,10],[15,18]]

print merge(intervals)

# output [[1,6],[8,10],[15,18]]
