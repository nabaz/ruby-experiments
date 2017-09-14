class RemoveChar
  def read_file
    File.open(ARGV[0])
  end

  def remove_characters
    read_file.each_line do |line|

      split_line =  line.split(',')
      strip_string = split_line.first.strip
      remove_chars = split_line.last.strip.chars
      remove_chars.each do |rc|
        strip_string.delete!(rc)
      end

      puts strip_string

    end
  end
end

ll = RemoveChar.new
ll.remove_characters
