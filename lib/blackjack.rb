def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  i = deal_card
  j = deal_card
  res = i+j
  display_card_total(res)
  res
end

def hit?(card_total)
  prompt_user
  i = get_user_input
  if i == 's'
    card_total
  elsif i == 'h'
    card_total + deal_card
  else
    invalid_command
    prompt_user
    i = get_user_input #why would you prompt again here instead of the top of method?
    card_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  while card_sum < 22
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
end_game(card_sum)

end
    
