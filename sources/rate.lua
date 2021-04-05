require 'finan'

FV = 18000.00
PV = 10000.00
N  = 60.
  
io.write("Rate per month (percent - beg) = ")
print(fmt("%4.2f", rate(FV, PV, N, 0) * 100) .. "%")
io.write("Rate per month (percent - end) = ")
print(fmt("%4.2f", rate(FV, PV, N, 1) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Returns the periodic interest rate.
--
-- Returns the periodic interest rate necessary for an investment to 
-- grown to a future value over the number of compounded periods in 
-- term. (LOTUS, 1991)
--
-- You invested $ 10,000 in a bond that matures in five years and has a
-- maturity value of $ 18,000. Interest is compounded monthly. Consider 
-- beginning and end of each period. (LOTUS, 1991)
--
-- Result (type 0) = 0.98%
-- Result (type 1) = 12.47%
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.
