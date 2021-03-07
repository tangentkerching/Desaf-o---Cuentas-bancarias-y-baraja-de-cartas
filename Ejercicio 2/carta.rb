class Carta

    @numero
    @pinta

    def initialize()

    end

    def random_numero()
      @numero = Random.rand(1..13)
    end

    def set_numero(numero)
        @numero = numero
      end

    def set_pinta(pinta)
    if pinta != 'C' && pinta != 'D' && pinta != 'E' && pinta != 'T' 
        return raise "La pinta solo puede ser C D E y T" 
    end
        @pinta = pinta
    end

    def get_pinta
        return @pinta
    end

    def get_numero
        return @numero
    end


end