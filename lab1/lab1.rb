###################Q1#############################
def create_copies(string, n)
    n.times do |i|
      puts string * (i + 1)
    end
  end

  string = "a"
  n = 6
  create_copies(string, n)
###################Q2#############################
def starts_with_if?(string)
    string.start_with?("if")
  end
  string = "if condition"
  result = starts_with_if?(string)
  puts result
###################Q3#############################
def exchange_first_last(string)
    if string.length >= 2
      string[0], string[-1] = string[-1], string[0]
    end
    string
  end
  string1 = "Python"
  result1 = exchange_first_last(string1)
  puts result1
###################Q4#############################
def add_last_character(string)
    if string.length >= 1
      last_character = string[-1]
      new_string = last_character + string + last_character
      new_string
    end
  end
  string1 = "abc"
  result1 = add_last_character(string1)
  puts result1
###################Q4#############################
def leap_year?(year)
    (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
end

year = 2012
if leap_year?(year)
    puts "#{year} is a leap year"
else
    puts "#{year} is not a leap year"
end
###################Q5#############################
def rotate_left(arr)
    rotated_arr = arr[1..-1] + [arr[0]]
  end
  arrays = [[1, 2, 5], [1, 2, 3], [1, 2, 4]]
  
  arrays.each do |arr|
    result = rotate_left(arr)
    puts result.inspect
  end
###################Q6#############################
def compute_sum(array)
    result = []
    skip_next = false
  
    array.each_with_index do |num, index|
      if skip_next
        skip_next = false
        next
      end
  
      if num == 17 && index < array.length - 1
        skip_next = true
        next
      end
  
      result << num
    end
  
    result
  end
  arrays = [[3, 5, 17, 6], [3, 5, 1, 17], [3, 17, 1, 7]]
  
  arrays.each do |array|
    result = compute_sum(array)
    puts result.inspect
  end
  