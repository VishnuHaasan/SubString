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
    puts "#{string}: #{x}";
    hash[string] = x if x>0   
  end;
  return hash;
end;
hash = substring(["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"],"Howdy partner, sit down! How's it going?");
puts hash;