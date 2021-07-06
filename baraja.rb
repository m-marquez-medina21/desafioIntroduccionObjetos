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
end

#     def barajar
#         self.cards.shuffle
#     end 
#     def sacar
#         self.cards.pop(1)
#     end
#     def repartir
#         hand = []
#         5.times do
#             hand.push(self.cards.pop)
#         end
#         return hand
#     end


# end

# games = Deck.new()