def erase_overlap_intervals(intervals)
  count = 0
  n = intervals.size
  return 0 if n < 2

  intervals.sort_by! {|item| item[0]}

  previous_end = intervals[0][1]
  
  (1...intervals.size).each do |i|
    if intervals[i][0] < previous_end
      count += 1
    else
      previous_end = intervals[i][1]
    end
  end
  count
end

intervals = [[1,2],[2,3],[3,4],[1,3]]

puts erase_overlap_intervals(intervals)
