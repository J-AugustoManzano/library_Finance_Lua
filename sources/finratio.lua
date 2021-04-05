require 'finan'

N = 3.
I = 5.0 / 100.0
  
io.write("Financing ratio = ")
print(fmt("%8.5f", finratio(I, N)))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculate the financing ratio
--
-- A department store is operating its financing at a rate of 5% a 
-- month. What will be the value of the funding ratio for a 3-month 
-- funding? (MATEMATICA DIDATICA, 2017)
--
-- Result = 0.36721
--
-- MATEMATICA DIDATICA
-- http://www.matematicadidatica.com.br/CalculoPrestacao.aspx
