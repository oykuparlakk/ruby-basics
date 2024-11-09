class TicTacToe
  def initialize
    @board = Array.new(3) { Array.new(3, ' ') }
    @current_player = 'X'
  end

  def display_board
    puts '  0   1   2'
    @board.each_with_index do |row, index|
      puts "#{index} " + row.join(' | ')
      puts '  -----------'
    end
  end

  def play
    until winner || board_full?
      display_board
      puts "Oynayan: #{@current_player}"
      row, col = get_move
      place_move(row, col)
      switch_player
    end
    display_board
    puts winner ? "Oyuncu #{winner} kazandı!" : 'Beraberlik!'
  end

  private

  def get_move
    loop do
      puts 'Satır ve sütun numarasını girin (örnek: 0 1):'
      input = gets.chomp.split.map(&:to_i)
      return input if valid_move?(input)

      puts 'Geçersiz hamle. Tekrar deneyin.'
    end
  end

  def valid_move?(input)
    row, col = input
    row.between?(0, 2) && col.between?(0, 2) && @board[row][col] == ' '
  end

  def place_move(row, col)
    @board[row][col] = @current_player
  end

  def board_full?
    @board.all? { |row| row.none? { |cell| cell == ' ' } }
  end

  def winner
    @board.each { |row| return row[0] if row.uniq.length == 1 && row[0] != ' ' }
    (0..2).each do |col|
      return @board[0][col] if @board.map { |row| row[col] }.uniq.length == 1 && @board[0][col] != ' '
    end
    return @board[0][0] if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && @board[0][0] != ' '
    return @board[0][2] if @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] && @board[0][2] != ' '

    nil
  end

  def switch_player
    @current_player = @current_player == 'X' ? 'O' : 'X'
  end
end

game = TicTacToe.new
game.play
