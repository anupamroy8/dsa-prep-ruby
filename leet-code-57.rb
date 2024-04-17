def insert(intervals, new_interval)
  result = []
  merged_intervals = intervals << new_interval
  merged_intervals.sort_by! { |interval| interval[0]}

  result = result.push(merged_intervals[0])

  (1...merged_intervals.size).each do |i|
      if result[-1][1] >= merged_intervals[i][0]
          result[-1][1] = [result[-1][1], merged_intervals[i][1]].max
      else
          result.push(merged_intervals[i])
      end
  end
  result
end

intervals = [[1,3],[6,9]]
newInterval = [2,5]

print insert(intervals, newInterval)
# output [[1,5],[6,9]]
