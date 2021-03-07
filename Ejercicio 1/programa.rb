require './cuentabancaria.rb'
require './usuario.rb'

cuenta1 = CuentaBancaria.new('Santander','14454', 5000)
cuenta2 = CuentaBancaria.new('Scotiabank','1456234', 5000)

usuario = Usuario.new('Juanín Juan Harry', cuenta1)

puts "Saldo total usuario antes de la transferencia: #{usuario.saldo_total}"

cuenta1.transferir(5000, cuenta2)



puts "Saldo total usuario después de la transferencia: #{usuario.saldo_total}"
puts "Saldo cuenta 1 #{cuenta1.saldo}"
puts "Saldo cuenta 2 #{cuenta2.saldo}"