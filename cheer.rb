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
puts "Hey #{name}, what's your birthday? (mm dd yyyy)"
birthday = gets.chomp
birthday = birthday.split(" ")

today = Time.new
dayNum = today.yday

date = Time.local(birthday[2], birthday[0], birthday[1])
dateNum = date.yday

if date.month > today.month
  diff = dateNum - dayNum
else
  diff = 365 - dayNum + dateNum
end

puts "Awesome! Your birthday is in #{diff} days! Happy Birthday in advance!"
