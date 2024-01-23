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

    def to_s()
        @up.to_s
    end

    def ==(card)
        self.reveal == card.reveal
    end
end

if __FILE__ == $PROGRAM_NAME
p test = Card.new(:C)
p test.hide
p test.to_s

p test2 = Card.new(:C)
p test == test2
end