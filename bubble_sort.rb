# Bubble sort method for sorting numbers

def bubble_sort(arr)
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
  end
  arr
end

bubble_sort([3, 4, 78, 2, 0, 2])

# Bubble sort by method for sorting words by ther length

def bubble_sort_by(arr)
  arr2 = []
  arr.length.times do
    (arr.length - 1).times do
      arr[0], arr[1] = arr[1], arr[0] if yield(arr) <= 0
      arr.push(arr.shift)
    end
    arr2.push(arr.shift)
  end

  arr2
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
