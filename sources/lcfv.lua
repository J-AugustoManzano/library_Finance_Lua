require 'finan'

PV = 1000.00
N  = 3.
F  = .5
I  = percent2rate(8)
  
io.write("Amount by linear convention $ ")
print(format_num(lcfv(PV, I, N, F), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculate the amount by linear convention
--
-- The linear convention allows the formation of compound interest for 
-- the entire part of the term and simple interest for the fractional 
-- part.
--
-- A capital of $ 1,000.00 was applied at compound interest for three 
-- and a half months at a rate of 8% p. m. What is the amount by the 
-- linear agreement? (HAZZAN, 2007)
--
-- Result $ 1,310.10
--
-- HAZZAN, S. Matematica Financeira. 6. ed. Sao Paulo: Saraiva, 2007
