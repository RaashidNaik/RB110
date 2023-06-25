def xor?(exp1, exp2)
  !!exp1 == !!exp2 ? false: true
end 

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?(nil, 5) == true
p xor?(nil,  nil) == false
p xor?(5, 6) == false