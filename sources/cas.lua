require 'finan'

PV = 30000.00
N  = 5.

io.write("Constant amortization system $ ")
print(format_num(cas(PV, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- The system of constant amortization consists in establishing that
-- all the amortization parcels are equal.
--
-- A person borrows $ 30,000 from a bank committing to repay the 
-- principal amount of the loan in 5 installments. Disregarding the 
-- interest that will be charged on how much will be the installment 
-- for the repayment of the loan?
--
-- Result = $ 6,000.00
