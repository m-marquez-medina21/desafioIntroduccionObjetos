#se conecta con archivo carta.rb para asociar clase
require_relative 'carta'

class Baraja #se crea la clase baraja
    attr_accessor :cards
#se crea el constructor para generar numeros y pinta
    def initialize(cards =[])
        @cards = cards
        kind = ['C', 'D', 'E', 'T']
#se recorren las cartas u se agrega un numero y pinta al azar
        13.times do 
            self.cards.push(Card.new(rand(1..13), kind.sample))
        end

        return cards
    end

    def barajar
        self.cards.shuffle
    end 
    def sacar
        self.cards.pop(1)
    end
    def repartir
        hand = []
        5.times do
            hand.push(self.cards.pop)
        end
        return hand
    end


end

games = Baraja.new()