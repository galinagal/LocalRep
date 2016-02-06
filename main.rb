require "pry"
ARGV.each do |var|
  puts var
end
x_point, y_point, x, y= ARGV
if x_point==x && y_point==y 
   puts "Точка найдена"
elsif x_point!=x && y_point!=y
  puts "Близко, но нет"
elsif y_point!=y && x==x_point
  puts "X координата верна, у - нет"
elsif x!=x_point && y==y_point
 puts "Y координата верна, x - нет"
end
binding.pry

