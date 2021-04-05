require 'finan'

PV = 10000.00
FV = 20000.00
N  = 5.

print("Compound annual growth rate: " .. fmt("%.2f", cagr(PV, FV, N)) .. "%\n")

-- The calculate compound annual growth rate (cagr) is the year-over-year 
-- growth rate of an investment over a period of time.
--
-- Considering the investment of $ 10,000 with estimated final 
-- value of $ 20,000 over a period of 5 years will have the
-- compound annual growth rate.
--
-- Result 14.87%
--
-- Compound Annual Growth Rate - CAGR.
-- https://www.investopedia.com/terms/c/cagr.asp.
