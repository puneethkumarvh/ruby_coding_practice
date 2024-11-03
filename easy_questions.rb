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
