# def grandfatherClock(&block)
#   todayHours = Time.now.hour
#   todayHours.times do
#     block.call
#   end
# end
#
# grandfatherClock do
#   puts 'DONG!'
# end

def log(blockDescription, &block)
  block.call
end

log
