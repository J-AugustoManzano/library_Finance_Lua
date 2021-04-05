require 'finan'

TOTLIAB = 17500.00
TOTDEBT = 10000.00
  
io.write("Leverage ratio ")
print(fmt("%.2f", lr(TOTLIAB, TOTDEBT)) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- A leverage ratio is meant to evaluate a company’s debt levels. The 
-- most common leverage ratios are the debt ratio and the debt-to-equity 
-- ratio.
--
-- Considering a company with $ 10,000 of debt and $ 17,500 of assets. 
-- What is your leverage ratio?
--
-- Result = 0.57%
--
-- Leverage Ratio.
-- https://www.investopedia.com/terms/l/leverageratio.asp.
