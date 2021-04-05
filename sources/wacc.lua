require 'finan'

MVE = 55000.00
MVD = 13500.00
COE = percent2rate(5)
COD = percent2rate(7)
I   = percent2rate(17.5)
  
io.write("Weighted average cost of capital (WACC): ")
print(fmt("%.2f", wacc(MVE, MVD, COE, COD, I)) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- The weighted average cost of capital is the rate that measures the 
-- required remuneration on the capital invested in a for-profit 
-- entity. The 'wacc' represents the weighted average relative share 
-- of third-party capital and equity.
--
-- Considering a company that has as its own equity value $ 55,000 
-- at a cursto of 5% and value of debts of 13,500 at a cost of 7% with 
-- tax rate of 17.5% what will be your wacc?
--
-- Result 5,20%
--
-- Weighted Average Cost of Capital (WACC).
-- http://www.investinganswers.com/financial-dictionary/financial-statement-analysis/weighted-average-cost-capital-wacc-2905.
