def transpose(matrix)
  new_matrix = []
  1.upto(matrix.size) { new_matrix << [] }
  matrix.each do |arr|
    arr.each_with_index do |val, idx|
      new_matrix[idx] << val
    end
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]