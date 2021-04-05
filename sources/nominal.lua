require 'finan'

I = 12.68 / 100.0
N = 12.
  
io.write("Nominal interest (rate) ......: ")
print(fmt("%8.6f", nominal(I, N)))
io.write("Nominal interest (percent) ...: ")
print(fmt("%.2f", nominal(I, N) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the nominal interest rate for especified effetive rate and
-- number of compounding periods.
--
-- See example presented in the effect.cpp program.
--
-- Result = 0.119978 or 12.00%
