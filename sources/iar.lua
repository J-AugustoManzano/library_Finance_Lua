require 'finan'

IVTR = percent2rate(50)
IR   = percent2rate(34)

print("Inflation adjusted return " .. fmt("%.2f", iar(IVTR, IR)) .. "%\n")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Allows the return of the effective calculation of adjusted inflation 
-- on payments and receipts.
--
-- A person invests stock in a company for $ 10 a lot. A year later 
-- it sells the shares at $ 15. The return on the sale is 50%. However, 
-- inflation for the year was 34%. How much was the effective gain 
-- after trading the shares?.
-- 
-- Result = 11.94%
--
-- Inflation-Adjusted Return.
-- http://www.investinganswers.com/financial-dictionary/investing/inflation-adjusted-return-6711.
