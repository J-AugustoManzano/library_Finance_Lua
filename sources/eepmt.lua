require 'finan'

PV = 1000.00
N  = 2.
I  = percent2rate(5.)
  
io.write("Value of the entry and payments $ ")
print(format_num(eepmt(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the value of the provision of financing with equal value
-- of the provision and entrance.
--
-- I want to buy a TV set for sale for $ 1,000.00. The interest rate is
-- 5% per month. I want to pay in 3 installments being one entrance and
-- two more installments equal to the value of the entrance. What is the
-- value of the entry and, consequently, the value of the benefits?
-- (MATEMATICA DIDATICA)
--
-- Result $ 349.72
--
-- Matematica Didatica
-- http://www.matematicadidatica.com.br/CalculoPrestacao.aspx
