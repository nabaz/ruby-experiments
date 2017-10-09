class Banned
  attr_reader :clean_count

  def initialize(*banned_word)
    @banned_word = banned_word.flatten.sort
    @clean_count = 0
  end

  def clean?(text)
    @clean_count +=1
    @banned_word.each do |word|
      return false if text  =~ /\b#{word}\b/
    end
  end

  def verify(*suspectd_word)
    suspectd_word.flatten.sort == @banned_word
  end

end
filter = Banned.new("six")

dict = ["foo", "bar", "six", "baz"]
p dict - (dict.dup.delete_if { |word| not filter.clean?(word) })


puts filter.clean?("I'll be home by six")
puts filter.verify("ball")
puts filter.verify("six")

puts filter.clean_count
