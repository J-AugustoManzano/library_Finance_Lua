require 'finan'

I  = percent2rate(2.)
N1 = 30.
N2 = 90.
N3 = 360.
  
io.write("Monthly proportional rate ....: ")
print(fmt("%3.0f", proprate(I, N1)) .. "%")
io.write("Quarterly proportional rate ..: ")
print(fmt("%3.0f", proprate(I, N2)) .. "%")
io.write("Annual proportional rate .....: ")
print(fmt("%3.0f", proprate(I, N3)) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculate the proportional rate
--
-- Two (or more) simple interest rates are said to be proportional
-- when their values and their respective time periods, reduced to the
-- same unit, are a proportion. (PARENTE, 1996)
--
-- Find the simple monthly, quarterly and annual interest rates,
-- proportional to 2% per day.
--
-- Result (monthly)   =  60% | 2% p. d. =  60% p. a.
-- Result (quarterly) = 180% | 2% p. d. = 180% p. a.
-- Result (annual)    = 720% | 2% p. d. = 720% p. a.
--
-- PARENTE, E. A. de M. Matematica Comercial e Financeira. Ed. reform. 
-- Sao Paulo: FTD, 1996.
