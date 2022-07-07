#Bubble sort: is sorting by comparing the two elements against each other 
#and swapping them if the last one i smallest


def bubble_sort(array) 
  #keep going until no changes were made
  swapped = true
  while swapped == true do 
    swapped = false
    #goes through entire array and checks step by step for the length of it (-1)
    for i in 0..array.length-1
      #skips if end i reached
      next if i == array.length-1
      #checks if it should switch and then switches (or doesn't)
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        #turns next cycle of while-loop on, if it swapped something.
        swapped = true
      end
    end
  end
  array
end
  

p bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]