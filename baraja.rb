#se conecta con archivo carta.rb para asociar clase
require_relative 'carta'

class Deck 
    attr_accessor :cards

    def initialize
        @cards = []
        (1..13).each do |num|
            %w[C D E T].each do |kind|
                @cards << Card.new(num, kind)

            end
        end
    end

    def shuffles
        self.cards.shuffle
    end

    def draw
        self.cards.pop

    end

end

chinese_cards = Deck.new
# pp chinese_cards.shuffles
pp chinese_cards.draw
