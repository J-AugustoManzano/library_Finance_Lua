require 'finan'

PMT = 1174.60
I   = 0.10
FV  = -10000.00

io.write("It will take ")
print(fmt("%2.f", term(PMT, I, FV, 0)) .. " months.")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the number of compounding period required for an 
-- investment to -- accumulate to a future value at a periodic interest
-- rate.
--
-- You want to know how long it will take to pay back a $ 10,000 loan 
-- at 10% -- yearly interest, making payments of $ 1,174.60 per year. 
-- (LOTUS, 1991)
--
-- Result = 20
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.
