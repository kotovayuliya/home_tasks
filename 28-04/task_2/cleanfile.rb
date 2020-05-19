class Cleanfile
  attr_accessor :file_name

  def initialize
    @file_name = "palindrom.txt"
  end

  def open
    File.open(@file_name).each do |line|
      palindrome = line.strip.downcase.delete("\s.,")
      yield(palindrome)
    end
  end
end
