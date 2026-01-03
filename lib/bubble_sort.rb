# frozen_string_literal: true

def bubble_sort1(arr)
  (0...arr.size).each do |i|
    swapped = false
    (0...(arr.size - i - 1)).each do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

def bubble_sort2(arr)
  n = arr.size
  loop do
    swapped = false
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    n -= 1
    break unless swapped
  end
  arr
end
