# Bubble sort method

def bubble_sort(arr)
  counter = 0
  (arr.length**2).times do
    arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter] if arr[counter] > arr[counter + 1]
    counter += 1
    counter = 0 if counter == arr.length - 1
  end
  arr
end

bubble_sort([4, 3, 78, 2, 0, 2])
