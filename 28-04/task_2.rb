File.open("palindrom.txt").each do |line|
  pal = line.strip.downcase.delete("/\s\.\,/")
  if pal == pal.reverse
    puts "True"
  else
    puts "False"
  end
end



def palindrome?(string)
  if string.length == 1 || string.length == 0
    true
  else
    if string[0] == string[-1]
      palindrome?(string[1..-2])
    else
      false
    end
  end
end
