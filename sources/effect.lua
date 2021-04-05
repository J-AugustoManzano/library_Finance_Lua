require 'finan'

I = 12. / 100.
N = 12.
  
io.write("Effective interest (rate) .....: ")
print(fmt("%8.6f", effect(I, N)))
io.write("Effective interest (percent) ..: ")
print(fmt("%4.2f", effect(I, N) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the effective interest rate for especified nominal rate 
-- and number of compounding periods.
--
-- Assume you buy a certificate of deposit with a 12% stated annual 
-- interest rate. If the bank compounds the interest every month 
-- [that is, 12 times per year]. (INVESTINGANSWERS, 2017)
--
-- Result = 0.126825 or 12.68%
--
-- INVESTINGANSWERS
-- http://www.investinganswers.com/financial-dictionary/income-
-- dividends/effective-annual-interest-rate-2559
