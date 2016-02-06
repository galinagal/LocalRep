require "pry"
x_point, y_point, x, y= ARGV
if x==x_point && y=y_point 
   puts "Точка найдена"
elsif x!=x_point && y!=y_point
  puts "Близко, но нет"
elsif x==x_point && y!=y_point
  puts "X координата верна, у - нет"
elsif x!=x_point && y==y_point
 puts "Y координата верна, x - нет"
end
binding.pry

