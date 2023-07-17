require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagnols

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, sep, last)
  if arr.size == 1
    arr[0].to_s
  else
    arr[0..-2].join(sep) +"#{sep}#{last} " + arr[-1].to_s
  end
end


def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_squares(brd)
  brd.keys.select{|num| brd[num] == INITIAL_MARKER}
end

def select_starter?
  prompt "Would you like to start the game before the computer (y/n)?"
  player_start = gets.chomp
  player_start.downcase.start_with?('y')
end

def alternate_player(current_player)
  if current_player == 'Player'
    'Computer'
  else
    'Player'
  end
end

def place_piece!(board, current_player)
  if current_player == 'Player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end 

def player_places_piece!(brd)
  square = ''
  loop do 
    prompt "Choose a square (" + joinor(empty_squares(brd), ', ', 'and') + "):"
    square = gets.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  square = computer_defensive(brd, square)
  square = computer_offensive(brd, square)
  brd[square] = COMPUTER_MARKER
end

def computer_offensive(brd, square)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
      line.each { |num| square = num if brd[num] ==  INITIAL_MARKER }
    end
  end
  square
end 
  

def computer_defensive(brd, square)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      line.each { |num| square = num if brd[num] ==  INITIAL_MARKER }
    end
  end
  square
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_score = 0
computer_score = 0

loop do
  board = initialize_board
  if select_starter?
    current_player = 'Player'
  else
    current_player = 'Computer'
  end
  
  loop do 
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end
  
  display_board(board)
  
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end
  
  if detect_winner(board) == 'Player'
    player_score += 1
  elsif detect_winner(board) == 'Computer'
    computer_score += 1
  end
  
  prompt "Score is Player: #{player_score} and Computer: #{computer_score}"
  break if player_score == 5 || computer_score == 5
  
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

if player_score == 5
    prompt "Player wins all rounds!!!"
elsif computer_score == 5
    prompt "Computer wins all rounds!!!"
end

prompt "Thanks for playing Tic Tac Toe!. Goodbye!"