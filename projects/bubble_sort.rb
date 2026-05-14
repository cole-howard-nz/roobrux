def bubble_sort(array)
  (array.size - 1).times {
    array.each_cons(2).each_with_index { |(a, b), index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    }
  }
  array
end

tests = [
  { input: [3, 1, 4, 2], expected: [1, 2, 3, 4] },
  { input: [1, 2, 3, 4], expected: [1, 2, 3, 4] },
  { input: [4, 3, 2, 1], expected: [1, 2, 3, 4] },
  { input: [5, 5, 5, 5], expected: [5, 5, 5, 5] },
  { input: [2, 2, 1, 3], expected: [1, 2, 2, 3] },
  { input: [1], expected: [1] },
  { input: [], expected: [] },
  { input: [-3, -1, -4, -2], expected: [-4, -3, -2, -1] },
  { input: [-1, 3, -2, 4], expected: [-2, -1, 3, 4] },
  { input: [100, 1, 50, 2], expected: [1, 2, 50, 100] },
]

tests.each { |test|
  result = bubble_sort(test[:input])
  puts "#{ result == test[:expected] ? "PASS" : "FAIL" } - #{ test[:input] } = #{ test[:expected] }"
}