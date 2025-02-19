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

def hit?(card_total)
  prompt_user
  choice = get_user_input
  if choice == 'h'
    card_total += deal_card
  elsif choice != 's'
    invalid_command
    hit?(card_total)
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21 do
    card_total = hit?(card_total)
    if card_total > 21
      display_card_total(card_total)
      end_game(card_total)
    end
  end
end
    
