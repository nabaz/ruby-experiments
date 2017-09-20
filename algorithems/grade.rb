# Grading Students
def solve(grades)
  result = []
  grades.each do |grade|
    if (grade % 10) >= 3 and (grade % 10) < 5 and grade > 40
        result = grade + (5 - (grade % 10))
    elsif grade >= 38 and grade < 40
        result = 40
    else
        result = grade
    end
    puts result
  end
end

a = [23, 80, 96, 18, 73, 78, 60, 60, 15, 45, 15, 10, 5, 46, 87, 33, 60, 14, 71, 65, 2, 5, 97, 0]
s = solve(a)
