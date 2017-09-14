# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def largestPrimeFactor(n)
  i = 2
  max = n
  while i <= n
    while max % i == 0
      if max = i
        return max
      end
      max = max / i
    end
    i += 1
  end
end

puts largestPrimeFactor(600851475143)
