class Usuario
    @nombre 
    @cuentas

    def initialize(nombre,cuenta)
      @nombre = nombre
      @cuentas = Array.new
      agregar_cuenta(cuenta)
    end

    def agregar_cuenta(cuenta)
      @cuentas.push(cuenta)
    end

    def saldo_total
      total = 0
      @cuentas.each do |c|
        total = c.saldo  
      end
      return total
    end

end