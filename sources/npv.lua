require 'finan'

CASHFLOW = {
     0.00,
     0.00,
  2500.00,
  2500.00,
  3000.00,
  5000.00,
  6000.00,
  9000.00,
  3000.00,
  2500.00,
     0.00,
  7500.00
}
RATE = 11.5 / 100. / 12.
SIZE = #CASHFLOW
  
io.write("Net present value $ ")
print(format_num(npv(RATE, CASHFLOW, SIZE), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the number of time periods required for value an 
-- investment.
--
-- Considering a series of twelve irregular values for an investment 
-- the rate of 11.5% per annum determines the net present value, being: 
-- the first, second and thirteenth releases equal to $ 0; third, 
-- fourth and tenth entries equal to $ 2,500; the fifth and ninth 
-- entries equal to $ 3,000; sixth release equal to $ 5,000; seventh 
-- release equal to $ 6,000; eighth pitch equal to $ 9,000; the tenth 
-- release equals $ 2,500 and twelfth release equals $ 7,500. 
-- (LOTUS, 1991)
--
-- Result = $ 38,084.13
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.

