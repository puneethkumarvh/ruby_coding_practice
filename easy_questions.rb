//Question :  Find the vowels and consonants in a word/sentence
  
given_string = "rails is a great framework."
vowels = %w[a e i o u A E I O U]
vowels_count =0;
consonants_count =0;

given_string.each_char do |x|
 if x =~ /[a-zA-z]/
  if vowels.include?(x) 
    vowels_count +=1
  else 
    consonants_count +=1
  end 
 end 
end 
p "vowels : #{vowels_count}"
p "consonants : #{consonants_count}"


//Question : Reverse a string without using built in methods

given_string = "amma"
reversed=""
for  i in (given_string.length-1).downto(0)
    reversed+=given_string[i]
end
p reversed


//Question : Split the words in a sentence

given_string = "amma is my god!."
split_string=given_string.split(" ")
p split_string

//Question : Find the prime numbers in an array
num =25
if num<=1 
    p false
end 

(2..Math.sqrt(num)).each do |i|
    if num % i ==0 
        p false 
    end 
end 
p true 

//Question : Find the highest number in an array
num = [1,5,2,10,29,32,4,16,01]
max= num[0]
num.each do |x|
 if x > max
   max = x
 end 
end 
p max

//Question : Find the 3rd lowest number in an array
num = [1,2,3,4,5,6,7]
first_lowest = second_lowest = third_lowest = Float:: INFINITY

num.each do |x|
 if x < first_lowest 
   third_lowest = second_lowest
   second_lowest = first_lowest 
   first_lowest = x
 elsif x < second_lowest
   third_lowest = second_lowest
   second_lowest = x
 elsif x < third_lowest 
   third_lowest = x
 end 
end 
p third_lowest 

//Question : Generate Fibonacci series
def fibonacci_iterative(n)
  fib_series = []  # Initialize an empty array to store the Fibonacci series

  (0...n).each do |i|
    if i == 0
      fib_series << 0  # First Fibonacci number
    elsif i == 1
      fib_series << 1  # Second Fibonacci number
    else
      # Each subsequent number is the sum of the two preceding ones
      fib_series << fib_series[i - 1] + fib_series[i - 2]
    end
  end

  fib_series
end

# Example usage
terms = 10
puts "Fibonacci series up to #{terms} terms: #{fibonacci_iterative(terms).join(', ')}"

//*************************************************************************************************************************************

//Question : Find the missing numbers in a series
def find_missing_numbers(array)
  # Determine the expected range of numbers
  min = array.min
  max = array.max
  
  # Create a complete set of expected numbers in the range
  complete_set = (min..max).to_a
  
  # Find the missing numbers by comparing the complete set to the original array
  missing_numbers = complete_set - array
  
  missing_numbers
end

# Example usage
numbers = [1, 2, 4, 6, 7, 9]  # Missing 3, 5, 8
missing = find_missing_numbers(numbers)
puts "Missing numbers: #{missing.join(', ')}"  # Output: Missing numbers: 3, 5, 8

//***********************************************************************************************************************************
//Question : Find the factorial of a number using recursion
def factorial(n)
  # Base case: If n is 0 or 1, return 1
  return 1 if n <= 1
  
  # Recursive case: n! = n * (n-1)!
  n * factorial(n - 1)
end

# Example usage
number = 5
result = factorial(number)
puts "The factorial of #{number} is #{result}"  # Output: The factorial of 5 is 120


//*********************************************************************************************************************************
//Question : Find if the word is a palindrome
def check_palindrome(word)
i =0;
l = word.length-1
while(i<l)
 if word[i] != word[l] 
    return false
 end 
 i+=1
 l-=1
end 
true  
end 

result = check_palindrome("amma")
p result


//********************************************************************************************************************************
//Question :  Write a program to compare two strings
string1="amma"
string2="amma"

if string1.length != string2.length
   p false 
end
i=0

while i<string1.length  
  if string1[i] != string2[i]
     p false 
  end 
  i+=1
end 
p "It is same"
//********************************************************************************************************************************








