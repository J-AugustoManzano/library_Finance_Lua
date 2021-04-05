require 'finan'

REALRATE   = percent2rate(12.)
INFLATTION = 8.5 / 100.

io.write("Apparent rate ..: ")
print(fmt("%8.6f", apptrate(REALRATE, INFLATTION)))
io.write("In percent .....: ")
print(fmt("%4.2f", apptrate(REALRATE, INFLATTION) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Apparent rate is the effective interest rate at which the effects of
-- inflation within a financial transaction are not considered.
--
-- A bank offers an investor 12% yield on a 10-month future investment.
-- Knowing that the projection of inflation for this period will be 
-- 8.5%, -- what is the amount of the apparent rate that the bank 
-- should give the investor?
--
-- Result = 0.215200 or 21.52%
