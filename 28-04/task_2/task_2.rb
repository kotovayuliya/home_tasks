File.open("palindrom.txt").each do |line|
  palindrome = line.strip.downcase.delete("/\s\.\,/")
    if palindrome == palindrome.reverse
      puts "True"
    else
      puts "False"
    end
end