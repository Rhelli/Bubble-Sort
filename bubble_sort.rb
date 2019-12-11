# frozen_string_literal: true
# rubocop:disable Metrics/ClassLength 

def bubble_sort(arr)
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |x|
      swap = true if arr[x] > arr[x+1]
      arr[x], arr[x + 1] = arr[x + 1], arr[x] if arr[x] > arr[x + 1]
    end
  end
  print arr
end

arr = [1, 4, 5, 66, 7, 3, 12_312, 2]

bubble_sort(arr)

def bubble_sort_by(arr)
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |x|
      a = arr[x]
      b = arr[x + 1]
      arr[x], arr[x + 1] = arr[x + 1],arr[x] if yield(a,b) >= 0
      swap = true  if yield(a,b) >= 0
    end
  end
  print arr
end

bubble_sort_by(arr) {|a,b| a - b}
