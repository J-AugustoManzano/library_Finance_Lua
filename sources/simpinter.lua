require 'finan'

PV = 520
I  = 0.01 -- 1.0% (1.0 / 100.0)
N  = 3
  
io.write("Interest received $ ")
print(format_num(simpinter(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculate the interest charged on a $520.00 loan with simple interest
-- at the rate of 1.0% per month over a three-month period.
--
-- Result $ 15.60
