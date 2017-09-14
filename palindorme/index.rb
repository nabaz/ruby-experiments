class Palindrome
  def read_file
    File.open(ARGV[0])
  end

  def is_palindrome
    read_file.each_line do |line|
      clean_word = line.delete(' ').strip
      puts clean_word.downcase ==  clean_word.downcase.reverse
    end
  end
end

w = Palindrome.new
w.is_palindrome
