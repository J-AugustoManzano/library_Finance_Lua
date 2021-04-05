require 'finan'

I    = percent2rate(5)
N    = 5
YEAR = 1
VLRS = {}

print("Discount Factor (DF)")
print()
discfact(I, N, VLRS)
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
--        0.9070
--        0.8638
--        0.8227
--        0.7835
--
-- Discount factor.
-- https://wiki.treasurers.org/wiki/Discount_factor.
