class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    words = str.split(" ")
    words.each_with_index do |word, index|  # Add "each_with_index" to keep track of the index of each word in the array
      if word.length > 4
        if word[0] == word[0].upcase
          words[index] = word[-1].match?(/\p{Punct}/) ? "Marklar#{word[-1]}" : "Marklar"
        else
          words[index] = word[-1].match?(/\p{Punct}/) ? "marklar#{word[-1]}" : "marklar"
        end
      end
    end
    res = words.join(" ")
    return res
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 if nth < 2
    res = 0
    counter = 2
    while counter <= nth
      f = fibonacci(counter)
      if f % 2 == 0
        res = res + f
      end
      counter += 1
    end
    return res
  end

  def self.fibonacci(n)
    if n == 0
      return 0
    elsif n == 1
      return 1
    else
      fib = [0, 1]
      (n-1).times do
        next_fib = fib[-1] + fib[-2]
        fib << next_fib
      end
      return fib[-1]
    end
  end
  
end