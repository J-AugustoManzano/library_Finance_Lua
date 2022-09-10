require 'finan'

PV = 8000
I  = 0.012 -- 1.2% (1.2 / 100.0)
N  = 6
  
io.write("Interest received $ ")
print(format_num(compinter(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculate the interest received on an investment of $8,000.00 
-- compounded at the rate of 1.2% per month for one semester.
--
-- Result $ 593.56
