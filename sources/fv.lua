require 'finan'

PMT = 2000.00
I   = 0.075 -- 7.5% (7.5 / 100.0)
N   = 20.
  
io.write("End of period $ ")
print(format_num(fv(PMT, I, N, 0), 2))
io.write("Period start  $ ")
print(format_num(fv(PMT, I, N, 1), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the future value of an invetment, based on a series of 
-- equal payments. Earninf a periodic interest rate. over the number 
-- of payment periods in term.
--
-- You plan to deposit $ 2,000 each year for the next 20 years into an 
-- account to save for retirement. The account pays 7.5% interest, 
-- compounded annuaally; interest is paid on the last day of each year.
-- You make each year's contribution on the last day of year 
-- (LOTUS, 1991)
--
-- Result $ 86,609.36
--
-- If considered the beginning of the period the returned file will 
-- be $ 93,105.06.
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.
