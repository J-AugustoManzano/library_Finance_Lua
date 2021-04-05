require 'finan'

COST    = 400000.00
SALVAGE = 50000.00
LIFE    = 5.
  
io.write("Constant depreciation (rate) ......: ")
print(fmt("%8.6f", crd(COST, SALVAGE, LIFE)))
io.write("Constant depreciation (percent) ...: ")
print(fmt("%4.2f", crd(COST, SALVAGE, LIFE) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- The constant rate depreciation method consists in establishing a 
-- constant rate of depreciation, which is calculated on the value of
-- the asset at the end of each period.
--
-- Determine the constant rate and prepare the depreciation plan for a
-- property acquired for $ 400,000.00, with a 5-year useful life and a
-- residual value of $ 50,000.00. (KUHNEN, 2001)
--
-- Result = 0.340246 or 34.02%
--
-- KUHNEN, O. L. Matematica Financeira Aplicada e Analise de
-- Investimentos. 3. Ed. Sao Paulo: Atlas, 2001.
