require 'finan'

PV = 7608.00
N  = 138. / 30.
I  = percent2rate(5.2)
  
io.write("Future value with simple commercial discount $ ")
print(format_num(spcdiscfv(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the simple commercial discount on future value.
--
-- The discount on a security generated a credit of $ 7,608 in a 
-- company's account. Knowing that this bond has a maturity of 138 days
-- to maturity and that the bank charges a discount rate of 5.2% per 
-- month in this transaction, calculate the value of the security.
-- (adapted from STIELER, 2009)
--
-- Result = $ 10,000.00
--
-- STIELER, E. C. Matemática Financeira. Matro Grosso: UNEMAT, 2009.
-- http://www2.unemat.br/eugenio/desconto.html

