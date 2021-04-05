require 'finan'

FV = 5862.72
PV = 5000.00
N  = 7.
  
io.write("Composite intrate (rate) .....: ")
print(fmt("%8.6f", intrate(FV, PV, N)))
io.write("Composite intrate (percent) ..: ")
print(fmt("%4.2f", intrate(FV, PV, N) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the compound interest rate
--
-- The final value of a $ 5,000 loan for a 7-month period is $ 5,862.72.
-- What is the application interest rate? (MATEMATICA DIDATICA, 2017)
--
-- Result = 0,230000 or 2.30%
--
-- MATEMATICA DIDATICA
-- http://www.matematicadidatica.com.br/JurosCompostosTaxa.aspx
