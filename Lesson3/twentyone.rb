require 'pry'
require 'pry-byebug'

# rubocop:disable Style/RedundantInterpolation

SUITS = ["Hearts", "Diamonds", "Clubs", "Spades"]
CARD_VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]
CARD_NAMES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen'] +
             ['King', 'Ace']

def prompt(msg)
  puts "=> #{msg}"
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
  if sum_of_cards(dealer_cards.values) < 17
    dealer_cards.merge!(deal_cards!(full_deck, 1))
  end
end

def sum_of_cards(hand_values)
  aces = hand_values.count(11)
  sum = hand_values.sum
  if aces >= 1 && sum > 21
    loop do
      sum -= 10
      aces -= 1
      break if sum <= 21 || aces == 0
    end
  end
  sum
end

def check_winner(dealer, player)
  dealer_diff = 21 - sum_of_cards(dealer.values)
  player_diff = 21 - sum_of_cards(player.values)
  if dealer_diff < 0 && player_diff > 0
    prompt "Player wins!"
    "Player"
  elsif dealer_diff > 0 && player_diff < 0
    prompt "Dealer wins!"
    "Dealer"
  elsif dealer_diff > player_diff
    prompt "Player wins!"
    "Player"
  elsif dealer_diff < player_diff
    prompt "Dealer wins!"
    "Dealer"
  else
    prompt "It's a tie!"
  end
end

loop do
  full_deck = initialize_deck
  dealer_score = 0
  player_score = 0
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
    # If the dealers sum_of_cards is over 21 it's a bust
    if sum_of_cards(dealer_cards.values) > 21
      prompt "Dealer busts!  You win!"
      break
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
      winner = check_winner(dealer_cards, player_cards)
      if winner == 'Player'
        prompt "#{winner} wins!"
        player_score += 1
      elsif winner == 'Dealer'
        prompt "#{winner} wins!"
        dealer_score += 1
      else
        prompt "It's a tie"
      end
      break
    end
  end
  
  prompt "Dealer Score: #{dealer_score}"
  prompt "Player Score: #{player_score}"
  
  if dealer_score == 5
    prompt "Dealer ultimate winner!"
    break
  elsif player_score == 5
    prompt "Player ultimate winner!"
    break
  end

  prompt "Would you like to play again? (y/n)"
  play_again = gets.chomp
  break if !play_again.downcase.start_with?('y')
end

# rubocop:enable Style/RedundantInterpolation
