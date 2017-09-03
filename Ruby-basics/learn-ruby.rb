# Playing with passing blocks to methods
  # def my_method
  #   puts 'First line'
  #   yield
  #   puts 'Third line'
  # end
  #
  # my_method do
  #   puts 'Second line'
  # end

# Yield takes parameters too
  # def my_method
  #   puts 'First line'
  #   yield('Second', 'line')
  #   puts 'Third line'
  # end
  #
  # my_method do |a, b|
  #   puts a + ' ' + b
  # end

# &block --- block is just a name, could have used any name ----- this or yield, choose
# def my_method(&block)
#   block.call
# end
#
# my_method do
#   puts 'Hello!'
# end

# How long different sections of programs are running?

def profile(descriptionOfBlock, &block)
  startTime = Time.now
  block.call
  duration = Time.now - startTime
  puts descriptionOfBlock+':  '+duration.to_s+' seconds'
end

profile('25000 doublings') do
  number = 1
  25000.times do
    number = number + number
  end
  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s+' digits'
end

profile('count to a million') do
  number = 0
  1000000.times do
    number = number + 1
  end
end
