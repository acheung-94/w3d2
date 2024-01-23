class Board
    def initialize(side)
        raise "side has to be an even num" if side.odd? #size has to be even!
        @grid = Array.new(side) { Array.new(side) }
        @pairs = (side * side) / 2 #num of pairs that we need.
        str = "abcdefghijklmnopqrstuvwxyz"
        @pairs_array = str[0...@pairs].split("")
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
        @pairs_array.each do |pair| #(a), b, c
            i = 0
            while i < 2
                row = rand(0...@grid.length)
                col = rand(0...@grid.length)
                pos = [row, col] #1, 2
                if @grid[row][col] == nil 
                    self[pos] = pair # @grid[row][col]
                    i += 1 #increment if placement successful
                end
            end
        end
        p @grid
    end 
end





if __FILE__ == $PROGRAM_NAME
    board_test = Board.new(4)
    board_test.populate
end