require 'finan'

PV = 16290.13
N  = 12. / 3. -- 1 year before with bank discount rate per quarter
I  = percent2rate(5.)

io.write("Calculation of nominal value of a security $ ")
print(format_num(cpcdiscfv(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the composite commercial discount on the future value of 
-- a loan.
--
-- What is the nominal value of a security that was redeemed 1 year 
-- before its maturity for $ 16,290.13, at the bank discount rate 
-- composed of 5% per quarter? (KUHNEN, 2001)
--
-- Result = $ 20,000.01
--
-- KUHNEN, O. L. Matematica Financeira Aplicada e Análise de 
-- Investimentos. 3. Ed. São Paulo: Atlas, 2001.
