class Board
    def initialize(side)
        @grid = Array.new(side) { Array.new(side) }
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

end





if __FILE__ == $PROGRAM_NAME
    board_test = Board.new(3)
    p board_test
    p board_test[[0,0]] = 5
    p board_test
end