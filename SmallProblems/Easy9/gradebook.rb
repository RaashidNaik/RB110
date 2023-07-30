SCORE_LETTER = {(90..100) => 'A', (80...90) => 'B', (70...80) => 'C', 
                (60...70) => 'D', (0...60) => 'F'}

def get_grade(first, second, third)
  avg = [first, second, third].sum/3
  SCORE_LETTER.each do |key, value|
    return value if key.cover?(avg)
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"