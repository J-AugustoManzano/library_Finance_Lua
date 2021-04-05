require 'finan'

FV = 4000.00
N  = 3. / 12.
I  = percent2rate(42.)

io.write("Simple commercial discount $ ")
print(format_num(sprdisc(FV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the simple rational rate.
--
-- A $ 4,000 par value security due in one year, which is being settled
-- 3 months before its maturity with nominal current interest rate is 
-- 42% per annum, we are asked to calculate the amount of the discount
-- to be granted. (ASSAF NETO, 2001)
--
-- Result = $ 380.09
--
-- ASSAF NETO, A. Matematica Financeira e suas Aplicacoes. 6. Ed. Sao
-- Paulo: Atlas, 2001.
