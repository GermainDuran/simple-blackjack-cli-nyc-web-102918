def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  r=Random.rand(1...11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  player1= deal_card
  player2= deal_card
  cards= player1 + player2
  display_card_total(cards)
  return cards
end

def hit?(cards)
  # code hit? here
  prompt_user
  players_input=get_user_input
  if (players_input == "s")
     
  elsif players_input =="h"
     r=deal_card
     cards= cards + r
  else players_input != "s" && players_input != "h"
     invalid_command
     prompt_user
  end 
  return cards
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  cards=initial_round
  prompt_user
  players_input=get_user_input
  
  if players_input == "h"
    deal_card
  elsif players_input == "s"
    prompt_user
  else cards > 21
    end_game
  
  
end
    
