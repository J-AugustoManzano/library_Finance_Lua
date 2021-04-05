require 'finan'

FV  = 30000.00
PMT = 1000.00
N   = 36.
I   = percent2rate(2)

io.write("Value of the financing entry $ ")
print(format_num(wentryfun(FV, PMT, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- What is the entry for funding.
--
-- What is the value of the entry for the financing of a car in the 
-- amount -- of $ 30,000.00, with a monthly installment of R$ 1,000.00,
-- at an interest -- rate of 2% per month for the term of 36 months?
-- (MATEMATICA DIDATICA, 2017)
--
-- Result = $ 4,511.16
--
-- MATEMATICA DIDATICA
-- http://www.matematicadidatica.com.br/FinanciamentoVeiculo.aspx
