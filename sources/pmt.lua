require 'finan'

PV = 8000.00
I  = 0.14 / 12.
N  = 36.
  
io.write("End of period $ ")
print(format_num(pmt(PV, I, N, 0), 2))
io.write("Period start  $ ")
print(format_num(pmt(PV, I, N, 1), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the net present value of a series of future cash.
--
-- Suppose an $ 8,000 auto loan is available for 3 years at an annual 
-- (36 months) interest rate of 14%, compounded monthly. Consider 
-- beginning and end of each period. (LOTUS, 1991)
--
-- Result (type 0) $ 273.42
-- Result (type 1) $ 270.27
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.
