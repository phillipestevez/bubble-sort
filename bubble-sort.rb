# Create a variable to store array of numbers
# Create a bubble sort method that returns a sorted array
# The method must pass through the array by comparing two numbers (left & right) against each other from the first through last number in array
    # The if the number on the left is greater than the number on the right, then they switch positions
# The method will perform this check and swap until the entire array is in the correct numberical order from least to greatest

puts "Enter some numbers:"
number_list = gets.chomp.split(/,/).map!(&:to_i)

def bubble_sort(numbers)
    i = 0
    r = 0
    sorted = false
    swapped = false

    until sorted == true
        while i < (numbers.length - 1)
            if numbers[i] > numbers[i + 1]
                numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
                swapped = true
            end
            i += 1
            r += 1
        end
        if swapped == true
            i = 0
        else
            sorted = true
        end
        swapped = false
    end

    pp r
    pp numbers

end

bubble_sort(number_list)