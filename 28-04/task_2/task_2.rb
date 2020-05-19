require_relative 'cleanfile.rb'

clean_file = Cleanfile.new
clean_file.open do |str|
  if str == str.reverse
    puts "True"
  else
    puts "False"
  end
end
