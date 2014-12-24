puts
puts " " * 9 + ?*
puts " " * 9 + ?^

9.times do |i|
  level = ?0 * i
  puts ("%9s0" % (?/ + level)) + level + ?\
end

puts " " * 8 + "###";

# C:\> ruby christmas_tree.rb
#        *
#        ^
#       /0\
#      /000\
#     /00000\
#    /0000000\
#   /000000000\
#  /00000000000\
# /0000000000000\
#       ###