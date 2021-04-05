require 'finan'

FV = 6000.00
N  = 45. / 30.
I  = percent2rate(2.1)
  
io.write("Simple commercial discount $ ")
print(format_num(spcdisc(FV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the simple commercial discount.
--
-- Simple commercial discount is the discount applied on the face value,
-- or future, of the security.
--
-- A $ 6,000 bond will be discounted at the rate of 2.1% per month. 
-- With -- 45 days to maturity, determine the amount of the commercial 
-- discount. (CRESPO, 2002)
--
-- Result = $ 189.00
--
-- CRESPO, A. A. Matematica Comercial e Financeira Facil. 13. Ed.
-- Sao Paulo: Saraiva, 2002.
