class Cleanfile
  attr_reader :file_name

  def initialize(file_name = "palindrom.txt")
    @file_name = file_name
  end

  def open
    File.open(file_name).each do |line|
      palindrome = line.strip.downcase.delete(" .,")
      yield(palindrome)
    end
  end
end
