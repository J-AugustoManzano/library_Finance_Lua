require 'finan'

PV = 100000.00
I  = 0.07      -- 7%
N  = 25. * 12. -- 25 years
  
io.write("Monthly loan payment (United States of America) $ ")
print(format_num(pmtusa(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the montly loan payments according to USA mortgage 
-- convencios.
--
-- Let's assume that we want to borrow a loan amount of $ 100,000 at 
-- 7.00% interest rate that is fully amortized over 25 years. 
-- (KOBZEFF, 2015)
--
-- Result = $ 706.78
--
-- KOBZEFF, J. How the USA and Canada Calculate Mortgage Payment. 
-- Oregon: James Kobzeff, 2015.
-- http://www.proapod.com/Articles/usa-canada.htm
