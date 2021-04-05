require 'finan'

FV = 4000.00
N  = 3. / 12.
I  = percent2rate(42.)

io.write("Present value with simple discount rational $ ")
print(format_num(sprdiscpv(FV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the commercial discount compounded on future value.
--
-- A $ 4,000 par value security maturing in one year, which is being 
-- settled 3 months before its maturity having nominal current interest
-- rate is 42% per annum, we are asked to calculate the discounted 
-- amount of this transaction. (ASSAF NETO, 2001)
--
-- Result = $ 3,619.91
--
-- ASSAF NETO, A. Matematica Financeira e suas Aplicacoes. 6. Ed. Sao
-- Paulo: Atlas, 2001.
