require 'finan'

FV = 35700.00
N  = 3.
I  = percent2rate(3.95)

io.write("Calculation of commercial discount (bank) $ ")
print(format_num(cpcdisc(FV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- The composite commercial discount occurs from the successive 
-- incidence of the discount rate on the nominal value of the security,
-- deducting for each period the discounts -- obtained in previous 
-- periods.
--
-- What is the compound commercial discount to be given on the 3-month 
-- advance payment on -- a security of $ 35,700.00 at the rate 
-- of 3.95% p. m.?
--
-- Result = $ 4,065.55
