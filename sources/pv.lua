require 'finan'

PMT = 50000.00
I   = 0.08
N   = 20.
  
io.write("Value $ ")
print(format_num(pv(PMT, I, N, 0), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the present  value of an invetment, based on a series of 
-- equal payments. Discounted a periodic interest rate. over the number
-- of payment periods in term.
--
-- You won $ 1,000,000. You can receive either 20 annual payments of 
-- $ 50,000 at the end of each year or a single payments of $ 400,000 
-- instead of the $ 1,000,000 annuity. If you were to accept the annual 
-- payments of $ 50,000, you assume that you would invest the money at 
-- a rate of 8% componded annually. (LOTUS, 1991)
--
-- Result = $ 490,907.37
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.
