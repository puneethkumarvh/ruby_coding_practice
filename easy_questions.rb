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



