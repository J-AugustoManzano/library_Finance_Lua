require 'finan'

APPTRARE  = percent2rate(21.52)
INFLATION = percent2rate(8.5)
  
io.write("Real rate ......: ")
print(fmt("%8.6f", realrate(APPTRARE, INFLATION)))
io.write("In percent .....: ")
print(fmt("%4.2f", realrate(APPTRARE, INFLATION) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- An investor makes an application for the period of 10 months at a 
-- rate of 21.52% and in this period an 8.5% inflation occurred. What 
-- is the rate of return received by the investor?
--
-- Result = 0.120000 or 12.00%
