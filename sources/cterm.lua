require 'finan'

I  = 0.10 / 12.
FV = 20000.00
PV = 10000.00
  
io.write("Average of ")
print(fmt("%.2f", cterm(I, FV, PV) / 12) .. " years.")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the number of compounding periods it takes for an
-- investment to grow to future value, earning a fixed interest per
-- compounding period.
--
-- You just deposit $ 10,000 in an account thar pays an annual interest
-- rate of 10% compounded monthly. TKo determine how many years it will
-- take to double your investment. (LOTUS, 1991)
--
-- Result = 6.96
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.
