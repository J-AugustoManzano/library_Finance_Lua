require 'finan'

I   = 11.5 / 100. / 12.
PMT = -653.26
PV  = 20000.00
FV  = 0.00
  
io.write("Average of ")
print(fmt("%.2f", nper(I, PMT, PV, FV, 0)) .. " years.")
io.write("Average of ")
print(fmt("%.2f", nper(I, PMT, PV, FV, 1)) .. " years.")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the number of time periods required for an investment.
-- Obtain the duration in years of the loan.
--
-- The following example assumes you are making monthly payments at the
-- first of each month on a loan of $20,000, at an APR of 11.5%. If each
-- payment is $653.26, how many payments will you have to make to finish
-- paying off the loan?. Consider beginning and end of each period.
-- (ECLIPSE, 2017)
--
-- Result (type 0) = 36.41 years
-- Result (type 1) = 36.00 years
--
-- ECLIPSE
-- http://help.eclipse.org/mars/index.jsp?topic=%2Forg.eclipse.birt.doc%
-- 2Fbirt%2FScriptingReference.24.8.html
