def bubble_sort(arr)
  iteration = 1
  loop do
    swapped = false

    for i in 0...(arr.length - iteration)
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        swapped = true
      end
    end

    break unless swapped
    iteration += 1
  end
  
  arr
end

loop do
  arr = []
  puts "Enter array members (enter 'c' to stop)"

  index = 0
  loop do
    print "Index #{index}: "
    member = gets.chomp
    break if member.downcase == 'c'
    arr << member.to_i
    index += 1
  end

  puts "=> #{bubble_sort(arr)}"

  print "Continue? [Y/n] "
  continue_response = gets.chomp
  break unless continue_response.downcase == 'y'
end
