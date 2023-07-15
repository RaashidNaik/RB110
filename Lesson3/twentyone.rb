require 'pry'
require 'pry-byebug'

SUITS = ["Hearts", "Diamonds", "Clubs", "Spades"]
CARD_VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]
CARD_NAMES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen'] +
             ['King', 'Ace']

def prompt(msg)
  puts "#{msg}"
end


def initialize_deck
  full_deck = {}
  SUITS.each do |suit|
    CARD_NAMES.each_with_index do |card, idx|
      full_deck["#{card} of #{suit}"] = CARD_VALUES[idx]
    end
  end
  full_deck 
end

def deal_cards!(full_deck, num_cards)
  deck = {}
  full_deck.keys.sample(num_cards).each do |card|
    deck[card] = full_deck.delete(card)
  end
  deck
end

def display_cards(dealer_cards, player_cards, both_stay = false)
  system 'clear'
  prompt "Dealer:"
  prompt both_stay ? "#{dealer_cards.keys[0]}" : "Hidden Card"
  dealer_cards.keys[1..-1].each { |card| prompt "#{card}" }
  prompt ""
  prompt "Player:"
  player_cards.keys.each { |card| prompt "#{card}" }
  prompt ""
end

def player_hit_or_stay!(full_deck, player_cards)
  loop do 
    prompt "Would you like to hit or stay (h/s)?"
    hit_or_stay = gets.chomp
    if hit_or_stay.downcase.start_with?('h')
      player_cards.merge!(deal_cards!(full_deck, 1))
      return
    elsif hit_or_stay.downcase.start_with?('s')
      return
    else
      prompt "Invalid response, please select 'h' or 's'"
    end
  end
end


def dealer_hit_or_stay!(full_deck, dealer_cards)
  if sum_of_cards(dealer_cards) < 17
    dealer_cards.merge!(deal_cards!(full_deck, 1))
  end
end

def sum_of_cards(hand_values)
  aces_eleven = hand_values.count(11)  # Number of aces in the cards
  sum = hand_values.sum                # Sum of values in the cards
  if aces_eleven >= 1 && sum > 21      # Reduces Ace values until less than 21
    loop do                            # or all aces reduced to 1.                                  
      sum -= 10                               
      aces_eleven -= 1
      break if sum <=21 || aces_eleven == 0 
    end
  end
  sum
end

def check_winner(dealer_cards, player_cards)
  dealer_sum = sum_of_cards(dealer_cards.values)
  player_sum = sum_of_cards(player_cards.values)
  
  dealer_diff = 21 - dealer_sum
  player_diff = 21 - player_sum 
  
  if dealer_diff < 0 && player_diff < 0
    prompt "It's a tie!"
  elsif dealer_diff < 0 && player_diff > 0
    prompt "Player wins!"
  elsif dealer_diff > 0 && player_diff < 0
    prompt "Dealer wins!"
  elsif dealer_diff > player_diff
    prompt  "Player wins!"
  elsif dealer_diff < player_diff
    prompt "Dealer wins!"
  else
    prompt "It's a tie!"
  end
end
  
  


full_deck = initialize_deck
dealer_cards = deal_cards!(full_deck, 2)
player_cards = deal_cards!(full_deck, 2)
display_cards(dealer_cards, player_cards)

loop do 
  initial_deck_size = full_deck.size
  
  player_hit_or_stay!(full_deck, player_cards)
  display_cards(dealer_cards, player_cards)
   # If the player sum_of_cards is over 21 we have to tell them it's a bust
  if sum_of_cards(player_cards.values) > 21
    prompt "Bust! You lose!"
    break
  end
  
  
  dealer_hit_or_stay!(full_deck, dealer_cards)
  display_cards(dealer_cards, player_cards)
  # If the dealers sum_of_cards (excluding the last card) is over 21 it's a bust
  if sum_of_cards(dealer_cards.values[1..-1]) > 21 # Exclude first card
    prompt "Dealer busts!  You win!"
  end
  
  final_deck_size = full_deck.size
  
  if final_deck_size == initial_deck_size # Player and dealer both stay
    both_stay = true # Used to display the dealer's first card
    
    display_cards(dealer_cards, player_cards, both_stay)
    
    prompt "Sum of Dealer Cards:"
    prompt "#{sum_of_cards(dealer_cards.values)}"
    prompt " "
    prompt "Sum of Player Cards:"
    prompt "#{sum_of_cards(player_cards.values)}"
  
    check_winner(dealer_cards, player_cards)
    break
  end 
end


  

