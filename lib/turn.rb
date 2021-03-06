def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 


def position_taken?(board, index)
  if board[index] ==  " " || board[index] == "" || board[index] == nil
    false 
  else 
    true
  end 
end

def valid_move?(board, index)
  index.between?(0, 8) && !(position_taken?(board, index))
end

def input_to_index(input)
  input.to_i - 1
end 
 
def move(board, index, value="X")
  board[index] = value
end 

def turn(board)
  puts "Please enter 1-9:"
  answer = gets.chomp
  answer = input_to_index(answer)
  if valid_move?(board, answer)
    move(board, answer)
    puts display_board(board)
  else
    turn(board)
  end 
end 
