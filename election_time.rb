
# instructions
puts "Welcome to my election voting program. "
puts "Election candidates are: Donald, Brad, Nancy, Barak "

# declare our variables
donald = 0
brad = 0
nancy = 0
barak = 0
vote_num = 1

# poll 10 people
10.times do

  print "vote ##{vote_num}: "
  vote = gets.chomp.to_s.downcase

  case vote
    when "donald"
      donald += 1  
    when "brad"
      brad += 1
    when "nancy"
      nancy += 1
    when "barak"
      barak += 1  
  end

  vote_num += 1
end

# result
puts "vote summary: "
puts "Donald => #{donald} vote(s)"
puts "Brad => #{brad} vote(s)"
puts "Nancy => #{nancy} vote(s)"
puts "Barak => #{barak} vote(s)"

#  check who is the winner
candidates = {'donald' => donald, 'brad' => brad, 'nancy' => nancy, 'barak' => barak}
winner = candidates.key(candidates.values.max)

puts "the winner is #{winner}"


# =================================================================
# Optional: will work on this part after I'm done with lessens 5 & 6
# Handle ties for a winner appropriately
# Handle grammar of vote summary saying vote or votes appropriately
# Handle write in votes
# Consider how to handle more than 10 votes
# Consider how to handle more than 3 candidates
# Refactor your code so that your code is DRY (Don't Repeat Yourself)