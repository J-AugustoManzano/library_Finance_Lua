require 'finan'

I  = percent2rate(4.3)
NC = 5
PV = 2750.00
N  = 6

io.write("Compound interest $ ")
print(format_num(ci(I, NC, PV, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Compound interest is the calculated interest on initial capital 
-- and interest accrued in prior periods of deposit or loan.
--
-- Considering obtaining the calculated value from the compound 
-- interest of an investment of $ 2,750.00 at a rate of 4.3% having 
-- as period compositions the value 5 of a maximum of 6 periods has 
-- the value.
--
-- Result = $ 3,555.51
--
-- Compound Interest.
-- https://www.investopedia.com/terms/c/compoundinterest.asp.
