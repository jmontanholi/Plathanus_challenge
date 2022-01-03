# The maximum number this program can achieve is the same as the maximum number the Roman notation can achieve, 3999 or MMMCMXCIX

def toRoman(num)
  units = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
  decimals = ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
  hundreds = ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'DM']
  thousands = ['', 'M', 'MM', 'MMM']
  separate_values = num.to_s.split('')
  case separate_values.length
  when 1
    units[separate_values[0].to_i]
  when 2
    decimals[separate_values[0].to_i] + units[separate_values[1].to_i]
  when 3
    hundreds[separate_values[0].to_i] + decimals[separate_values[1].to_i] + units[separate_values[2].to_i]
  when 4
    thousands[separate_values[0].to_i] + hundreds[separate_values[1].to_i] + decimals[separate_values[2].to_i] + units[separate_values[3].to_i]
  else
    'Please enter a valid value'
  end
end

p toRoman(1)
p toRoman(5)
p toRoman(10)
p toRoman(50)
p toRoman(100)
p toRoman(500)
p toRoman(1000)

p toRoman(21)
p toRoman(105)
p toRoman(1317)
