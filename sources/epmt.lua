require 'finan'

PV    = 10000.00
ENTRY = 3000.00
N     = 10.
I     = percent2rate(5.)
  
io.write("Amount of the benefit (financing with entry) $ ")
print(format_num(epmt(PV, ENTRY, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculation of the installments of a financing with entry
--
-- You want to buy a car that costs $ 10,000.00 with entry of $ 3,000 
-- at a rate of 5% at the table to be paid in 10 installments. What is 
-- the value of each installment?
--
-- Result $ 906.53
