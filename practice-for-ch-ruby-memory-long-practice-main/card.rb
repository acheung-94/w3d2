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

    # def ==(value)
    #     self == value
    # end
end

if __FILE__ == $PROGRAM_NAME
p test = Card.new(:C)
p test.hide

p test
end