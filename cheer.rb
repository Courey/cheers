puts "What's your name?"
name = gets.chomp.upcase
if name.empty?
  puts "you must enter your name!"
  exit
end
puts "Your name is #{name}"
name.each_char do |char|
  if char == "O" || char == "E" || char == "A" || char == "I" || char == "U"
    puts "Give me an... #{char}"
  else
    puts "Give me a... #{char}"
  end
end
puts "#{name}'s just GRAND!"
