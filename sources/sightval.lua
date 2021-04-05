require 'finan'

PMT = 264.51
N   = 12.
I   = percent2rate(1.99)
  
io.write("Value at sight $ ")
print(format_num(sightval(PMT, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the amount at sight of financing a property.
--
-- Calculates the amount in view of a financing.
--
-- Considering a 12-month financing rate of 1.99% with
-- installments of $ 264.51 determine the amount at sight.
--
-- Result = 2,799.00
