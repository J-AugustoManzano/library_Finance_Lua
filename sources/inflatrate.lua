require 'finan'

PRICE1 = 10.00
PRICE2 = 12.50
  
io.write("Inflation (rate) .....: ")
print(fmt("%8.6f", inflatrate(PRICE1, PRICE2)))
io.write("Inflation (percent) ..: ")
print(fmt("%4.2f", inflatrate(PRICE1, PRICE2) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the Inflation rate
--
-- A product was purchased in 20x1 for $ 10.00, In 20x2, the same 
-- product was being sold for $ 12.50. How much was the inflation 
-- increase on the price of the product sold?
--
-- Result = 0.250000 or 25.00%
