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

nums_buffer1.each_index do |index1|
  nums_buffer2.each_index do |index2|
    if index1 == index2
      nums_two_columns << "|#{nums_buffer1[index1].rjust(30)}|#{nums_buffer2[index2].rjust(30)}|\n"
    end
  end
end

nums_two_columns_file = File.open("nums_comm.txt", "w+")
nums_two_columns_file.write nums_two_columns
nums_two_columns_file.close
