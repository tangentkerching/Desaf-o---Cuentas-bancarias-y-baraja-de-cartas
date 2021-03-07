class CuentaBancaria
    @nombre_de_usuario
    @numero_de_cuenta
    @saldo

    attr_accessor :saldo

    def initialize(nombre_de_banco, numero_de_cuenta, saldo)
      @nombre_de_banco  = nombre_de_banco
      @numero_de_cuenta = numero_de_cuenta 
      @saldo = saldo
    end

    def transferir(monto, cuenta)

        if @saldo - monto < 0
            return raise 'Error al hacer transferencia, saldo insuficiente'
        end
        @saldo = @saldo - monto
        cuenta.saldo += monto
    end

end