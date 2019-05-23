#creates empty array to fill with customers
katz_deli=[]


#creates function to show line
def line(array)
  # if line is empty...
   if (array.length == 0)
     puts "The line is currently empty."
  else 
    # creates message using literals
    message = "The line is currently:"
  # use each with index (learned in badges & schedules challenge) to create list of numbers
  #value = name 
  #index = place in array
  array.each_with_index do |value, index| 
    # added 1 as computers count from zero!
    message += " #{index.to_i+1}. #{value}"
  end 
  puts "#{message}"
  end 
end 

$number = 0
#creates function to welcome customer and show place in line, using array position and name as arguments
def take_a_number(array)
# array = []
    $number += 1
    array << $number
  #literals plus adding 1 again!
    puts "Welcome. You are number #{$number}."
end

#creates function to show who is currently being served
def now_serving(array)
  #if nobody is being served 
  if array.empty? == true 
    puts "There is nobody waiting to be served!"
    #if someone is being served
  elsif array.empty? == false 
  #shift clears name from array so that the line moves!
      puts "Currently serving #{array.shift}."
  end
end
