def palindrome?(string)
  if string.length == 1 || string.length == 0
    puts "True"
  else
    if string[0] == string[-1]
      palindrome?(string[1..-2])
    else
      puts "False"
    end
  end
end

File.open("palindrom.txt").each do |line|
  str_punct_marks_off_downcase = line.strip.downcase.delete("/\s\.\,/")
  palindrome?(str_punct_marks_off_downcase)
end