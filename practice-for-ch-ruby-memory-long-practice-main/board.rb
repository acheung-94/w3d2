require_relative "card.rb"

class Board
    def initialize(side)
        raise "side has to be an even num" if side.odd? #size has to be even!
        @grid = Array.new(side) { Array.new(side) }
        @pairs = (side * side) / 2 #num of pairs that we need.
        str = "abcdefghijklmnopqrstuvwxyz"
        @pairs_array = str[0...@pairs].split("")
        @pairs_array.map! { |pair| Card.new(pair) }
    end

    def [](pos)
        row = pos[0]
        col = pos[1]
        @grid[row][col]
    end 

    def []=(pos, value)
        row = pos[0]
        col = pos[1]
        @grid[row][col] = value
    end

    def populate #test.populate
        @pairs_array.each do |card| # Card(a), Card(b), Card(c) ...
            i = 0
            while i < 2
                row = rand(0...@grid.length)
                col = rand(0...@grid.length)
                pos = [row, col] #1, 2
                p card 
                p @grid[row][col]
                if @grid[row][col] == nil 
                    self[pos] = card # @grid[row][col]
                    i += 1 #increment if placement successful
                    p "success #{card.reveal}"
                end
            end
        end
        p @grid
    end 

    def render
        @grid.each do |row|
            p row.map {|card| card.side_up }
        end
    end

    def reveal(guess_array)
        chosen_card = self[guess_array]
        #grid at pos, show the card . reveal, then return that value
        p chosen_card.reveal if chosen_card.side_up == " "
        
    end

    def won?
        #grid.flatten.all? {|card| card = card.reveal}
    end
end





if __FILE__ == $PROGRAM_NAME
    board_test = Board.new(4)
    board_test.populate
    board_test.render
   p board_test.reveal([1,1]) 
    board_test.render
end