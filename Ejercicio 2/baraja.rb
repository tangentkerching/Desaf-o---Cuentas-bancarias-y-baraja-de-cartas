require './carta.rb'

class Baraja
    
    @cartas
    attr_accessor :cartas


    def initialize()
      @cartas = Array.new
      populate_deck()
    end
    
    def populate_deck()
        pintas = ['C','D','E','T']

        pintas.each do |pinta|
            13.times do |i|
                carta = Carta.new
                carta.set_numero(i + 1)
                carta.set_pinta( pinta )
                @cartas.push(carta)
            end
        end
    end

    def barajar
        @cartas = @cartas.shuffle
    end
    
    def sacar
        return @cartas.pop
    end

    def repartir_mano
        return @cartas[0..4]
    end

end

baraja = Baraja.new
baraja.cartas.each do |c|
    puts "Carta: #{c.get_pinta} #{c.get_numero}" 
end

baraja.barajar

baraja.cartas.each do |c|
    puts "Carta: #{c.get_pinta} #{c.get_numero}" 
end

puts baraja.sacar
puts baraja.repartir_mano
