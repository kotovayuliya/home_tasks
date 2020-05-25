parag_counter = File.readlines("parag1.txt").count { |line| line =~ /\S+\n$/ }

puts parag_counter
