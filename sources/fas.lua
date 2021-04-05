require 'finan'

PV = 100000.00
N  = 5.
I  = percent2rate(10.)
  
io.write("Frensh amortization system (price) $ ")
print(format_num(fas(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the French Amortization System (Price). In this system, 
-- the benefits are the same and periodic, from the moment they begin 
-- to be paid.
--
-- A loan in the amount of $ 100,000.00 must be settled in 5 equal and 
-- monthly installments, with the first 30 days after the date of 
-- hiring, by means of the French amortization system. Knowing that the
-- interest rate charged is 10% per month, it is asked to express the 
-- value of the benefits to be paid. (TOSI, 2002)
--
-- Result $ 26,379.75
--
-- TOSI, A. J. Matematica Financeira com utilizacao do Excel 2000: 
-- aplicavel tambem às versoes 5.0, 7.0 e 97. 2. Ed. Sao Paulo: Atlas, 
-- 2002.

