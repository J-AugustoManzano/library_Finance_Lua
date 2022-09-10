require 'finan'

CASHFLOW = {
  -10000.00,
    1300.00,
    1300.00,
    1300.00,
    1300.00,
    1300.00
}

SIZE = #CASHFLOW	

io.write("Payback period ..........: ")
print(fmt("%.2f", paybper(CASHFLOW, SIZE)))

print()
io.write("Press <Enter> to finish... ")
io.read '*l'

-- Calculate payback Period is the length of time required to recover 
-- the cost of an investment. If the number of periods is set to 0 (zero) 
-- the cash flow is based on uniform values, when non-zero the flow is 
-- considered uneven.
--
-- 
-- Assuming the number of periods as 6, having an initial investment of 
-- $10,000, indicated in period 0 with equal cash flows of $1,000 per year in 
-- periods 2 through 6. What will be the payback time in years?
--
-- Result = 7.69 years
--
-- Payback Period.
-- https://www.sofi.com/learn/content/how-to-calculate-the-payback-period/.
