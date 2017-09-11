class FizzBuzz
  def f_b
    File.open(ARGV[0]).each_line do |line|
      line_split  = line.split
      first_divider  = line_split[0].to_i
      second_divider = line_split[1].to_i
      counter    = line_split[2].to_i

      new_array = []

      1.upto(counter) do |i|
        if (i % first_divider == 0) && (i % second_divider == 0)
          new_array << "FB"
        elsif i % first_divider == 0
          new_array << "F"
        elsif i % second_divider == 0
          new_array << "B"
        else
          new_array << i
        end

        print new_array.join(' ')
        puts
      end

    end
  end
end

a = FizzBuzz.new
a.f_b
