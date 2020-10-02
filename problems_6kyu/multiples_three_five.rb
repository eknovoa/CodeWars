=begin
Problem
-Finish the given solution so that it returns the sum of all the multiples of 3 or 5 below
the number passed in
  Input:
  -integer
  Output:
  -integer
  
  Rules:
  -if the number is a multiple of both 3 and 5, only count it once
  -if a number is negative, return 0

Examples / Test Cases
-If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3,5,6, and 9.
The sum of these multiples is 23.

-solution(10) == 23
-solution(20) == 78  (keep in mind that 15 was a multiple of 3 and 5 so only count it once)
-solution(200) == 9168

Data Structure
-integers and arrays

Algorithm
-define the method, solution and give it one paramater, number
-iniitalize a variable called array and assign it to an empty array
-initalize a variable called multiple_three and assign it to 3
-innitalize a variable called multiple_five and assign it to 5
-add in the conditional if/else statement:  if number < 0 then return 0
-invoke the while loop method and pass in the conditional statement, multiple_three < number, as its argument
  inside the method:
  -using the shovel operator push in multiple_three into the empty array, array
  -increase the multiple_three by 3 by reassigning it, multiple_three = multiple_three + 3
-invoke the while loop method and pass in the conditional statement, multiple_five < number, as its argument
   inside the method:
   -using the shovel operator push in multiple_five into the array variable
   -increase the multiple_five by 5 by reassigning it, multiple_five = multiple_five + 5
 -then we want to chain methods (uniq and sum) by calling the uniq method on the array variable to remove any duplicates in the array and then calling the sum
 method to add up all of the integers in the array.
  

Code

=end

def solution(number)
  array = []
  multiple_three = 3
  multiple_five = 5
  
  if number < 0
    return 0
  end
  
  while (multiple_three < number)
    array << multiple_three
    multiple_three += 3
  end
  
  while (multiple_five < number)
    array << multiple_five
    multiple_five += 5
  end
  array.uniq.sum
  
end

p solution(20)
