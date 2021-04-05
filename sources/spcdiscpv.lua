require 'finan'

FV = 6000.00
N  = 45. / 30.
I  = percent2rate(2.1)
  
io.write("Simple commercial discount (current value) $ ")
print(format_num(spcdiscpv(FV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the simple commercial discount.
--
-- Calculates the imple commercial discount on present value.
--
-- A $ 6,000 bond will be discounted at the rate of 2.1% per month. 
-- With 45 days to maturity, determine the current commercial value.
-- (CRESPO, 2002)
--
-- Result = $ 5,811.00
--
-- CRESPO, A. A. Matem\tica Comercial e Financeira Fácil. 13. Ed.
-- Sao Paulo: Saraiva, 2002.

