def checker(array_string,given_string)
  i = 0;
  count = 0;
  while i <= given_string.length-array_string.length do
    if given_string[i].upcase == array_string[0].upcase
      c = 0;
      k = i;
      for j in 0..array_string.length-1 do
        if given_string[k].upcase == array_string[j].upcase
          c+=1;
        else  
          j = array_string.length-1;
        end;
        k+=1;
      end;
      count += 1 if c == array_string.length;
    end;
    i+=1;
  end;
  return count;
end;
def substring(arr,str)
  hash = Hash.new;
  arr.each do |string|
    x = checker(string,str);
    hash[string] = x if x>0   
  end;
  return hash;
end;
puts "Enter the string to be checked for: ";
str = gets.chomp;
puts "Enter the number of strings to be checked as substrings: ";
n = gets.chomp.to_i;
arr = Array.new;
puts "Enter the strings to be checked as substrings: ";
for i in 1..n do
  string = gets.chomp;
  arr.push(string);
end;
hash = substring(arr,str);
puts "The resulting hash is: ";
puts hash;