arr1 = []

File.open("nums1.txt").each do |line|
  arr1 = line.split
end

arr2 = []

File.open("nums2.txt").each do |line2|
  arr2 = line2.split
end

arr_glob = []
arr_glob = arr1 + (arr2 - arr1)

# Dolzhny vyjti chisla, kotorye est v 1 ili 2 fajlah bez povtorenij

arr_comm = File.open("nums-1-or-2.txt", "w+")
arr_comm.write arr_glob.join(", ")
arr_comm.close
