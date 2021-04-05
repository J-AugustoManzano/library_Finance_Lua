require 'finan'

PV = 50000.00
CORRECTION = {
  percent2rate(0.94),
  percent2rate(0.54),
  percent2rate(0.66)
}
  
io.write("Monetary correction $ ")
print(format_num(moneycor(PV, CORRECTION, 3), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the monetary correction accumulated in a certain period.
--
-- The monetary correction is the recovery of the purchasing power of 
-- the amount borrowed.
--
-- Considering the value of $ 50,000.00 in 20x1. What will be its 
-- equivalent in 20x4, after the occurrence of financial devaluations 
-- (inflation) in 20x2 with 0.94%, 20x3 with 0.54% and 20x4 with 0.66%.
--
-- Result = $ 51,077.44
