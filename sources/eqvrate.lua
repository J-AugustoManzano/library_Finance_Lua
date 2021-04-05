require 'finan'

I = percent2rate(40.)
N = 1 / 2 -- 1 year has 2 semesters
  
io.write("Equivalent rate ..: ")
print(fmt("%8.6f", eqvrate(I, N)))
io.write("In percent .......: ")
print(fmt("%4.2f", eqvrate(I, N) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the equivalent rate
--
-- Two rates are considered equivalent, at compound interest, if applied
-- over the same capital, for an equivalent period of time, generating 
-- equal amounts. (SHINODA, 1998)
--
-- What is the semiannual rate equivalent to 40% per year. (SILVA, 2017)
--
-- Result = 0.183216 or 18.32%
--
-- SHINODA, C. Matematica Financeira para usuários do Excel. Sao Paulo:
-- Atlas, 1998.
--
-- SILVA, M. N. P. da. Taxas Equivalentes. Mundo Educacao 2017.
-- http://mundoeducacao.bol.uol.com.br/matematica/taxas-equivalentes.htm

