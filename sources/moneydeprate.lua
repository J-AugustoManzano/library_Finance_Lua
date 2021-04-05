require 'finan'

INFLATION = percent2rate(6.3)
  
io.write("Monetary depreciation (rate) .....: ")
print(fmt("%8.6f", moneydeprate(INFLATION)))
io.write("Monetary depreciation (percent) ..: ")
print(fmt("%.2f", moneydeprate(INFLATION) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the monetary depreciation.
--
-- While inflation represents a rise in price levels, the rate of 
-- currency devaluation measures the fall in the purchasing power of 
-- the currency caused by the price increase. (ASSAF NETO, 2001)
--
-- The inflation rate in Brazil in 2010 was 6.3%. What is the 
-- corresponding monetary devaluation rate?
--
-- Result = 0.059266 or 5.93%
--
-- ASSAF NETO, A. Matematica Financeira e suas Aplicacoes. 6. Ed. 
-- Sao Paulo: Atlas, 2001.
