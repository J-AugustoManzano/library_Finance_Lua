require 'finan'

PV = 2000.00
I  = 2.5 / 100.0
N  = 3. -- 90 / 30

io.write("Commercial discount of $ ")
print(format_num(spintrst(PV, I, N), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the simple intrest rate on an investment.
--
-- What is the value of the simple commercial discount of a $ 2,000
-- bond, with maturity for 90 days, at the rate of 2.5% per month?
-- (STIELER, 2009)
--
-- Result = $ 150.00
--
-- STIELER, E. C. Matemática Financeira. Matro Grosso: UNEMAT, 2009.
-- http://www2.unemat.br/eugenio/desconto.html
