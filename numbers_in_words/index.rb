class NumberInWord

  NUMBERS_HASH = {
    90 => "ninety",   80 => "eighty",   70 => "seventy",
    60 => "sixty",    50 => "fifty",    40 => "forty",
    30 => "thirty",   20 => "twenty",   19 => "nineteen",
    18 => "eighteen", 17 => "seventeen",16 => "sixteen",
    15 => "fifteen",  14 => "fourteen", 13 => "thirteen",
    12 => "twelve",   11 => "eleven",   10 => "ten",
    9  => "nine",     8  => "eight",    7  => "seven",
    6  => "six",      5  => "five",     4  => "four",
    3  => "three",    2  => "two",      1  => "one",
  }

  def initialize(number)
    @number = number
  end

  def pos(pos)
    @number.to_s[pos].to_i
  end

  def number_len
    len = 0
    begin
      len += 1
    end while (@number /= 10) > 0

    return len
  end

  def number_size
    @number.to_s.size
  end

  def print_word
    if NUMBERS_HASH.has_key?(@number)
      puts NUMBERS_HASH[@number]
    elsif (100..1000).include?(@number)
      puts [NUMBERS_HASH[@number / 100], "hundred",
      NUMBERS_HASH[@number - ((@number / 100) * 100) - (@number % 10)],
      NUMBERS_HASH[@number % 10]].join(" ").strip
    elsif (1001..10000).include?(@number)
      puts [ NUMBERS_HASH[@number / 1000], "thousand",
      NUMBERS_HASH[((@number - (@number / 1000) * 1000) - (@number % 100)) / 100], "hundred" ,
      NUMBERS_HASH[((@number % 100) / 10) * 10], NUMBERS_HASH[@number % 10]].join(" ").strip
    elsif (10001..100000).include?(@number)
      puts [NUMBERS_HASH[(@number / 10000) * 10], NUMBERS_HASH[(@number % 10000) / 1000], "thousand",
      NUMBERS_HASH[((@number - (@number / 1000) * 1000) - (@number % 100)) / 100], "hundred" ,
      NUMBERS_HASH[((@number % 100) / 10) * 10], NUMBERS_HASH[@number % 10]].join(" ").strip
    elsif (100001..1000000).include?(@number)
      puts [NUMBERS_HASH[(@number / 100000)], "hundred",
      NUMBERS_HASH[(((@number % 100000) / 10000)) * 10],
      NUMBERS_HASH[(@number % 10000) / 1000], "thousand",
      NUMBERS_HASH[((@number % 1000) / 100)], "hundred" ,
      NUMBERS_HASH[((@number % 100) / 10) * 10], NUMBERS_HASH[@number % 10]].join(" ").strip
    elsif (1000001..20000000).include?(@number)
      puts [NUMBERS_HASH[(((@number % 100000000) / 1000000))], "million",
      NUMBERS_HASH[(((@number % 1000000) / 100000))], "hundred",
      NUMBERS_HASH[(((@number % 100000) / 10000)) * 10], NUMBERS_HASH[(((@number % 10000) / 1000))], "thousand",
      NUMBERS_HASH[((@number % 1000) / 100)], "hundred" ,
      NUMBERS_HASH[((@number % 100) / 10) * 10], NUMBERS_HASH[@number % 10]].join(" ").strip
    elsif (20000001..100000000).include?(@number)
      puts [NUMBERS_HASH[(((@number % 1000000000) / 10000000)) * 10],NUMBERS_HASH[(((@number % 10000000))) / 1000000], "million",
      NUMBERS_HASH[(((@number % 1000000) / 100000))], "hundred",
      NUMBERS_HASH[(((@number % 100000) / 10000)) * 10], NUMBERS_HASH[(((@number % 10000) / 1000))], "thousand",
      NUMBERS_HASH[((@number % 1000) / 100)], "hundred" ,
      NUMBERS_HASH[((@number % 100) / 10) * 10], NUMBERS_HASH[@number % 10]].join(" ").strip
    end
  end
end

n = NumberInWord.new(99999999)
print n.print_word
