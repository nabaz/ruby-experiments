# Count frequencies of all elements in number
# for example the input 12 should say one 1 one 2

def count_and_say(number)
  number_hash = {
    1 => 'one',
    2 => 'two',
    3 =>  'three',
    4 => 'four',
    5 =>  'five',
    6 =>  'six',
    7 =>  'seven',
    8 =>  'eight',
    9 =>  'nine',
    0 =>  'zero'
  }
  num_to_str = number.to_s
  new_arr = num_to_str.split('')
  counts = Hash.new(0)
  new_arr.inject(counts) do |total, e|
    total[e] +=1
    total
  end

  counts.each do |k, v|
    puts number_hash[v] + " " + k + "\n"
  end
end

count_and_say(1232)
