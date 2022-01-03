def clearArr(arr)
  result = []
  arr.each do |element|
    if element.length > 7
      result.push(element)
    end
  end
  result
end

p clearArr(['11 aug 2020', '29 Jan', '27 Jan', '1 Dec 2022', '28 Jan', ''])