class NumberInWord

  ONES = {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    0 => 'zero'
  }

  def initialize(number)
    @number = number
  end

  def find_ones(pos)
    ONES.find{|k,v| v if k == @number.to_s[pos].to_i}
  end

  def find_tenth
    tenth = {'eleven'=> 11,'twelve'=> 12,'thirteen'=> 13,'fourteen'=> 14,'fifteen'=> 15,'sixteen'=> 16,'seventeen'=> 17, 'eighteen' => 18,'nineteen'=> 19}
    tenth.find{|k,v| k if v == @number}
  end

  def find_other(pos)
    others = {'ten'=> 1,'twenty'=> 2,'thirty'=> 3,'fourty'=> 4,'fifty'=> 5,'sixty'=> 6,'seventy'=> 7, 'eighty' => 8,'ninety'=> 9}
    others.find{|k,v| k if v == @number.to_s[pos].to_i}
  end

  def find_hundred(pos)
    find_ones pos
  end

  def find_thousand(pos)
    find_ones pos
  end

  def find_million_and_above(pos)
    find_ones pos
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

    if number_size == 1
      puts "#{find_ones(0)}"
    elsif number_size == 2
      puts "#{find_tenth}"
    elsif number_size == 3
      puts "#{find_hundred(0)} hundred #{find_other(1)} #{ONES(2)}"
    elsif number_size == 4
      puts "#{find_thousand(0)} thousand  #{find_hundred(1)} hundred #{find_other(2)} #{ONES(3)}"
    elsif number_size == 5
      puts "#{find_other(0)} #{ONES(1)} thousand  #{find_hundred(2)} hundred #{find_other(3)} #{find_ones(4)}"
    elsif number_size == 6
      puts "#{find_hundred(0)} hundred #{find_other(1)} #{find_ones(2)} thousand  #{find_hundred(3)} hundred #{find_other(4)} #{find_ones(5)}"
    elsif number_size == 7
      puts "#{find_ones(0)} million #{find_hundred(1)} hundred #{find_other(2)} #{find_ones(3)}
      thousand  #{find_hundred(4)} hundred #{find_other(5)} #{find_ones(6)}"
    elsif number_size == 8
      puts "#{find_other(0)} #{find_ones(1)} million #{find_hundred(2)} hundred #{find_other(3)} #{find_ones(4)}
      thousand  #{find_hundred(5)} hundred #{find_other(6)} #{find_ones(7)}"
    elsif number_size == 9
       puts "#{find_hundred(0)} hundred #{find_other(1)} #{find_ones(2)} million #{find_hundred(3)} hundred #{find_other(4)} #{find_ones(5)}
       thousand  #{find_hundred(6)} hundred #{find_other(7)} #{find_ones(8)}"
    end

  end
end

n = NumberInWord.new(121876543)
print n.print_word
