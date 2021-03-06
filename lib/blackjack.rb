def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end 

def get_user_input
  user_input = gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
 new_input = get_user_input
  if new_input == "h"
      card_total += deal_card
  elsif new_input == "s"
    card_total
  else 
    invalid_command
  end    
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_cards = initial_round
  until total_cards > 21
    total_cards = hit?(total_cards)
    display_card_total(total_cards)
  end 
end_game(total_cards)
end
    
