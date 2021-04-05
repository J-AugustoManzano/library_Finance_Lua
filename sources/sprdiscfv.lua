require 'finan'

PV = 3227.89
N  = 138. / 30.
I  = percent2rate(5.2)

io.write("Future value with simple discount rational $ ")
print(format_num(sprdiscfv(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the simple discount rational compounded on future value.
--
-- A present value security of $ 3,227.89 settled 3 months before its maturity with nominal
-- current interest rate is 42% per annum would it have value if it were paid on the expected
-- maturity date?. (adapted from ASSAF NETO, 2001)
--
-- Result = $ 4,000.00
--
-- ASSAF NETO, A. Matematica Financeira e suas Aplicacoes. 6. Ed. Sao
-- Paulo: Atlas, 2001.
