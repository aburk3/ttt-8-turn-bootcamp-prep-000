def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
intInput = "#{user_input}".to_i - 1
end


def move(boardArray, index, int_input= "X")
    boardArray[index] = int_input
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board, index)
  if (board[index] != " " && board[index] != "" && board[index] != nil)
    return true
  else 
    return false
  end
end

def turn()