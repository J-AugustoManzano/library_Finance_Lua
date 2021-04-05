require 'finan'

PV = 1000.00
N  = 3.
F  = .5
I  = percent2rate(8)
  
io.write("Amount by exponencial convention $ ")
print(format_num(ecfv(PV, I, N, F), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculate the amount by exponential convention
--
-- The exponential convention adopts the same capitalization regime for
-- the entire period. That is, it uses compound capitalization for both
-- the whole and the fractional part.
--
-- A capital of $ 1,000.00 was applied at compound interest for three
-- and a half months at a rate of 8% p. m. What is the amount by
-- exponential convention? (HAZZAN, 2007)
--
-- Result $ 1,309.13
--
-- HAZZAN, S. Matemática Financeira. 6. ed. São Paulo: Saraiva, 2007.


