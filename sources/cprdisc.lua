require 'finan'

FV = 50000.00
N  = 2.
I  = percent2rate(3.)
  
io.write("Calculation of rational compound discount $ ")
print(format_num(cprdisc(FV, I, N)))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- The rational compound discount is the difference between the nominal 
-- value and the present value of a security, settled before maturity.
-- (ASSAF NETO, 2001)
--
-- Find the rational compound discount, granted in the redemption of a
-- bond of $ 50,000.00, 2 months before its maturity, at the rate of
-- 3% p. m. (PARENTE, 1996)
--
-- Result $ 2,870.20
--
-- PARENTE, E. A. de M. Matematica Comercial e Financeira. Ed. reform. 
-- Sao Paulo: FTD, 1996.

