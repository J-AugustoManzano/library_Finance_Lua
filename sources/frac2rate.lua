require 'finan'

FRACTION = 3. / 10.
  
io.write("Fraction in rate ......: ")
print(fmt("%8.6f", frac2rate(FRACTION) / 100))
io.write("Fraction in percent ...: ")
print(fmt("%4.2f", frac2rate(FRACTION)) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Converts fraction to rate/percentage.
--
-- Present in rate/percentage form the fraction ten tenths:
--
--   3
-- ---- = 0.3 ==> 0.3 x 100 = 30%
--  10
--
-- Result = 0.300000 or 30%
