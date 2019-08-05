def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
 puts "Your cards add up to " + total.to_s
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  start_total = deal_card+deal_card
  display_card_total(start_total)
  start_total
end

def hit?
  # code hit? here
end

def invalid_command
  command = get_user_input
  if command != 'h' && command != 's'
    puts "Please enter a valid command"
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
