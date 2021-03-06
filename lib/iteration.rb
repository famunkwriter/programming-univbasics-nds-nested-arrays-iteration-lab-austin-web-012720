require "pry"

def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  row_index = 0
  inner_results = []
  while row_index < src.count do
    #binding.pry
    inner_results << "I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza"
      row_index += 1
    end
  return inner_results
end

def find_greater_pair(src)
  row_index = 0
  new_array = []
  while row_index < src.count do
    if src[row_index][0] > src[row_index][1]
      new_array << src[row_index][0]
    else
      new_array << src[row_index][1]
    end
    row_index += 1
  end
    return new_array
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
end

def total_even_pairs(src)
  row_index = 0
  total = 0
  new_array = []
  while row_index < src.count do
    if src[row_index][0].even? && src[row_index][1].even?
    total += src[row_index][0] + src[row_index][1]
  end
  row_index += 1
end
  return total
end
