require 'finan'

INV = -10000.00
PRF =  12000.00
  
io.write("Return on investment (ROI): ")
print(fmt("%.2f", roi(INV, PRF)) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Returns the return value of an investment.
--
-- One person invested $ 10,000 in the purchase of land and sold 
-- it for $ 12,000. What was the return obtained with an auction?
--
-- Result 20.00%
--
-- Return On Investment - ROI.
-- https://www.investopedia.com/terms/r/returnoninvestment.asp.
