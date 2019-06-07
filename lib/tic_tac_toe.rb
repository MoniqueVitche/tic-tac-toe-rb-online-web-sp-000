board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
x

def position_taken?(board, position)
  !(board[position].nil? || board[position] == " " || board[position] == "")
end

def valid_move?(board, position)
  if position.to_i.between(1,9)
    if !position_taken?(board, position.to_i-1)
      true
    end
  end

    # position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
end

def play(board)
  turn_count = 0
  while turn_count < 9
    turn(board)
    turn_count+=1
  end
end

def turn_count(board)
  turns = 0
  board.each do |turn|
    if turn == "X" || turn == "O"
      turns += 1
    end
  end
  turns

def current_player(board)
  if turn_count(board) % 2 == 0
    puts "X"
  else
    puts "O"
end
