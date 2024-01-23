class Card
    def initialize(value)
        @face_value = value
        @up = @face_value
        @down = " "
    end

    def hide
        @down
    end

    def reveal
        @up
    end

end

if __FILE__ == $PROGRAM_NAME
p test = Card.new('C')
p test.hide
end