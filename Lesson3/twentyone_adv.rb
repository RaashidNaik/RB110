SUITS = ["Hearts", "Diamonds", "Clubs", "Spades"]
CARD_VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]
CARD_NAMES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen'] +
             ['King', 'Ace']
GAME_VALUE = 21
DEALER_STAY = 17

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
  prompt both_stay ? dealer_cards.keys[0].to_s : "Hidden Card"
  dealer_cards.keys[1..-1].each { |card| prompt card }
  prompt ""
  prompt "Sum of Cards(visible):"
  if both_stay
    prompt sum_of_cards(dealer_cards.values).to_s
  else
    prompt sum_of_cards(dealer_cards.values[1..-1]).to_s
  end
  prompt ""
  prompt "Player:"
  player_cards.keys.each { |card| prompt card }
  prompt ""
  prompt "Sum of Cards:"
  prompt sum_of_cards(player_cards.values).to_s
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
  if sum_of_cards(dealer_cards.values) < DEALER_STAY
    dealer_cards.merge!(deal_cards!(full_deck, 1))
  end
end

def sum_of_cards(card_values)
  aces = card_values.count(11)
  sum = card_values.sum
  if aces >= 1 && sum > GAME_VALUE
    loop do
      sum -= 10
      aces -= 1
      break if sum <= GAME_VALUE || aces == 0
    end
  end
  sum
end

def check_winner(dealer_cards, player_cards)
  dealer_diff = GAME_VALUE - sum_of_cards(dealer_cards.values)
  player_diff = GAME_VALUE - sum_of_cards(player_cards.values)
  if dealer_diff < 0 && player_diff > 0
    "Player"
  elsif dealer_diff > 0 && player_diff < 0
    "Dealer"
  elsif dealer_diff > player_diff
    "Player"
  elsif dealer_diff < player_diff
    "Dealer"
  end
end

dealer_score = 0
player_score = 0

loop do
  full_deck = initialize_deck
  dealer_cards = deal_cards!(full_deck, 2)
  player_cards = deal_cards!(full_deck, 2)
  display_cards(dealer_cards, player_cards)

  loop do
    # Comparing deck sizes at beginning and end to see if both players stay
    initial_deck_size = full_deck.size

    # Player hits or stays
    player_hit_or_stay!(full_deck, player_cards)
    display_cards(dealer_cards, player_cards)
    if sum_of_cards(player_cards.values) > GAME_VALUE
      prompt "Bust! You lose!"
      dealer_score += 1
      break
    end

    # Dealer hits or stays
    dealer_hit_or_stay!(full_deck, dealer_cards)
    display_cards(dealer_cards, player_cards)
    if sum_of_cards(dealer_cards.values) > GAME_VALUE
      prompt "Dealer busts!  You win!"
      player_score += 1
      break
    end

    final_deck_size = full_deck.size

    # When both player and dealer stay the deck size does not change
    if final_deck_size == initial_deck_size
      both_stay = true
      display_cards(dealer_cards, player_cards, both_stay)
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
