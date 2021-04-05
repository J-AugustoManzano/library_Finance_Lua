require 'finan'

I    = percent2rate(5)
N    = 5
YEAR = 1
VLRS = {}

print("Cumulative discount Factor (CDF)")
print()
cdiscfact(I, N, VLRS)
for X = YEAR, N do
  print(fmt("%.4f", VLRS[X]))
end

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- The cumulative discount factor 'cdf' is the factor by which a future 
-- cash flow must be multiplied in order to obtain the present value.
--
-- The cumulative discount factors for a 5-year flow discounted from the 
-- end of year 1 by 5%.
--
-- Result 0.9524
--        1.8594
--        2.7232
--        3.5460
--        4.3295
--
-- Cumulative Discount Factor Tables.
-- http://www.datedial.com/datCumulative_Discount_Tables.asp.
