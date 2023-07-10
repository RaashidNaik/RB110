hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = []

hsh.each_value do |sub_hash|
  if sub_hash[:type] =='fruit'
     new_arr << sub_hash[:colors].map do |color|
      color.capitalize
    end
  else
    new_arr << sub_hash[:size].upcase
  end
end

p new_arr