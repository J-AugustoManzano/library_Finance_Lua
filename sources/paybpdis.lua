require 'finan'

CASHFLOW = {
  -5000.00,
   1000.00,
   1350.00,
   1400.00,
   1956.00,
   2200.00
}

SIZE = #CASHFLOW	

io.write("Payback period ..........: ")
print(fmt("%.2f", paybdis(CASHFLOW, SIZE)))

print()
io.write("Press <Enter> to finish... ")
io.read '*l'

-- Calculate payback Period is the length of time required to recover 
-- the cost of an investment. If the number of periods is set to 0 (zero) 
-- the cash flow is based on uniform values, when non-zero the flow is 
-- considered uneven.
--
-- Considering the number of periods as 6, having an initial investment 
-- of $ 5,000 with unequal cash flows: $ 1,000, 1,350, 1,400, 1,956 and 
-- 2,200 per year. What will be the recovery period in years?
--
-- Result = 3.64 years
--
-- Payback Discounted.
-- https://corporatefinanceinstitute.com/resources/knowledge/finance/discounted-
-- payback-period/.
