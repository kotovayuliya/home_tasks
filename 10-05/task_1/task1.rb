require 'csv'

nums_two_columns = ""
nums_buffer1  = []
nums_buffer2 = []

File.open("int_nums1.txt").each do |line|
  nums_buffer1 << line.chomp
end

File.open("int_nums2.txt").each do |line|
  nums_buffer2 << line.chomp
end

nums_buffer1.each_with_index do |number, index|
  nums_two_columns << "|#{number.rjust(30)}|#{nums_buffer2[index].rjust(30)}|\n"
end

nums_two_columns_file = File.open("nums_comm.txt", "w+")
nums_two_columns_file.write nums_two_columns
nums_two_columns_file.close
