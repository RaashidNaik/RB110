def transpose!(matrix)
  initial_size = matrix.size
  0.upto(matrix.size - 1) do |y|
    app_arr = []
    0.upto(matrix[0].size - 1) do |x|
      app_arr << matrix[x][y]
      #binding.pry
    end
    matrix << app_arr
  end
  matrix.shift(initial_size)
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose!(matrix)

p new_matrix # == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix # == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]