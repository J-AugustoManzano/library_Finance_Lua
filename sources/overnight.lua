require 'finan'

PV    = 50000.00
I     = 15.0 / 100.0
DAYS  = 25
  
io.write("Investment value $ ")
print(format_num(overnight(PV, I, 0, DAYS), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculate the rate (over rate) of one day for the application
-- of an investment. Such interest is recorded in working days,
-- usually multiplied by 30. This resource is used by financial
-- institutions authorized by the Central Bank of Brazil.
--
-- A capital of $ 50,000.00 applied at the over rate of 15%, what
-- will be the amount over a period of 25 days?
--
-- Result = $ 56,639.78
