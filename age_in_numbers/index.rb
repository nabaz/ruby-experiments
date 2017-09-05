class YourAgeInNumber
  def initialize(args)
    @b_day = args[:day]
    @b_month = args[:month]
    @b_year = args[:year]
    @current_day,
    @current_month,
    @current_year = Time.now.day, Time.now.month, Time.now.year
  end

  def us_style_birthday
    puts " you\'re #{cal_year} Years #{cal_month} month and #{cal_day} days old"
  end

  def cal_day
    return (@current_day - @b_day).abs
  end

  def cal_month
    return @current_month <= @b_month ? (@current_month - @b_month) + 12 : (@current_month - @b_month).abs
  end

  def cal_year
    return @current_month < @b_month || (@current_month == @b_month && @current_day < @b_day) ?  (@current_year - @b_year) - 1 :  @current_year -  @b_year
  end

  def internation_style_birthday
    # TODO:
  end
end

a = YourAgeInNumber.new(day:1, month:7, year:2015)

puts a.us_style_birthday
