# frozen_string_literal: true

def bubble_sort(arr)
  while true
    out = true
    (arr.length - 1).times do |x|
      out = false if arr[x] > arr[x + 1]
      arr[x], arr[x + 1] = arr[x + 1], arr[x] if arr[x] > arr[x + 1]
    end
    break if out == true
  end
  print arr
end

arr = [1, 4, 5, 66, 7, 3, 12_312, 2]

bubble_sort(arr)

def bubble_sort_by(arr)  
  while true
    out = true
    (arr.length - 1).times do |x|
      b = arr[x + 1]
      arr[x], arr[x + 1] = arr[x + 1], arr[x] if yield(arr[x], b) >= 0
      out = false if yield(arr[x], b) >= 0
    end
    break if out == true
  end
  print arr
end

bubble_sort_by(arr) { |a, b| a - b }
