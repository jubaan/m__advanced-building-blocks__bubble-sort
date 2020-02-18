# Bubble sort method for sorting numbers

class BubbleSort
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

  # Bubble sort by method for sorting words by ther length

  def bubble_sort_by(arr)
    arr2 = []
    arr.length.times do
      (arr.length - 1).times do
        arr[0], arr[1] = arr[1], arr[0] if yield(arr) <= 0
        arr.push(arr.shift)
      end
      arr2.push(arr.shift)
      print "#{arr2}\n"
    end
    arr2
  end
end
