require 'finan'

CASHFLOW = {
  -30000.00,
   17000.00,
   15000.00,
   12000.00,
   14000.00,
   10000.00,
    9000.00,
    5000.00,
    3000.00,
    2500.00,
    1000.00
}

I    = percent2rate(9.5)
SIZE = #CASHFLOW
  
io.write("Profitability index (rate) .....: ")
print(fmt("%.2f", profidx(I, CASHFLOW, SIZE)) .. "%")
io.write("Profitability index (percent) ..: ")
print(fmt("%.2f", profidx(I, CASHFLOW, SIZE) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- The profitability index is an investment valuation technique that 
-- calculates the present value of the future cash flows of a project 
-- divided by the initial investment of the project.
--
-- If the cost rate of a project is 9.5% with initial investment of 
-- $ 30,000 and cash flows of $ 17,000, 15,000, 12,000, 14,000, 10,000, 
-- 9,000, 5,000, 3,000, 2,500, and $ 1,000 have -as how rate of return:
--
-- Result = 2.14 or 213.65%
--
-- Profitability Index Method Formula.
-- https://strategiccfo.com/profitability-index-method-formula/.
