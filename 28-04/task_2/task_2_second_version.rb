require_relative 'cleanfile.rb'

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

clean_file = Cleanfile.new
clean_file.open { |str| palindrome?(str) }
