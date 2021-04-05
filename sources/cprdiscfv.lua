require 'finan'

PV = 12400.00
N  = 3.
I  = percent2rate(10.)
  
io.write("Calculation of rational compound discount $ ")
print(format_num(cprdiscfv(PV, I, N)))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculation of nominal value of a security at a rational discount.
--
-- What is the value of the security, which, discounted 3 months before 
-- its maturity, at a rate of 10% p. m., determined a redemption value 
-- of $ 12,400.00? (KUHNEN, 2001)
--
-- Result $ 16,504.40
--
-- KUHNEN, O. L. Matematica Financeira Aplicada e Analise de 
-- Investimentos. 3. Ed. Sao Paulo: Atlas, 2001.
