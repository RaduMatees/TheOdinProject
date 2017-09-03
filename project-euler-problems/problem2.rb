# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.
#
# Creating the Fibbonaci list (last nr < 4.000.000)

nr = 0
i = 1
fibbonaci = [1, 2]
while nr < 4000000
  nr = fibbonaci[i] + fibbonaci[i-1]
  i = i + 1
  fibbonaci.push(nr)
end
fibbonaci.pop

sum = 0
fibbonaci.each do |i|
  if i % 2 == 0
    sum += i
  end
end

puts sum