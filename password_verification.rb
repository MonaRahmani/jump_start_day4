
puts " please enter your password: "

# user input
password = gets.chomp

until password.length >= 8 && password.match(/\p{Lower}/ && /\p{Upper}/ && /\d/) && (password.include?("@" || "%" || "!" || "\*"))
  # Let users know what they did wrong
  case 
  when password.length < 8
    puts "The password must contain at least 8 characters"
  when !(password.match(/\p{Lower}/))
    puts "The password must have at least one lowercase letter"
  when !(password.match(/\p{Upper}/))
    puts "The password must have at least one uppercase letter"
  when !(password.include?("@" || "%" || "!" || "\*"))
    puts "The password must have at least one special character (@, %, *, !)"
  when !(password.match(/\d/))
    puts "The password must include one number"
  end
  password = gets.chomp
end

# ask users to confirm the password
puts "plesae enter your password again: "
confirm_pass = gets.chomp

until confirm_pass == password
  puts "entries do not match! please try again!"
  confirm_pass = gets.chomp
end

puts "congrats! your password is: #{password}"




