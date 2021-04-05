require 'finan'

PV = 20000.00
N  = 12. / 3. -- 1 year before with bank discount rate per quarter
I  = percent2rate(5.)

io.write("Calculating the current value of a discount $ ")
print(format_num(cpcdiscpv(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the composite commercial discount on the present value 
-- of a loan.
--
-- Calculate the current value of a bond of $ 20,000.00 discounted one 
-- year before maturity at the bank discount rate composed of 5% per 
-- quarter, capitalized quarterly.
--
-- Result = $ 16,290.13
--
-- KUHNEN, O. L. Matematica Financeira Aplicada e Análise de 
-- Investimentos. 3. Ed. São Paulo: Atlas, 2001.
