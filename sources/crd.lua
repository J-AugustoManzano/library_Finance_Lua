require 'finan'

COST    = 400000.00
SALVAGE = 50000.00
LIFE    = 5.

print("Constant depreciation (rate) ......: " .. fmt("%.6f", crd(COST, SALVAGE, LIFE)) .. "\n")
print("Constant depreciation (percent) ...: " .. fmt("%.2f", crd(COST, SALVAGE, LIFE) * 100) .. "%\n")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- The constant rate depreciation method consists in establishing a constant rate of depreciation,
-- which is calculated on the value of the asset at the end of each period.
--
-- Determine the constant rate and prepare the depreciation plan for a property acquired for
-- $ 400,000.00, with a 5-year useful life and a residual value of $ 50,000.00. (KUHNEN, 2001)
--
-- Result = 0.340246 or 34.02%
--
-- KUHNEN, O. L. Matemática Financeira Aplicada e Análise de Investimentos. 3. Ed.
-- São Paulo: Atlas, 2001.
