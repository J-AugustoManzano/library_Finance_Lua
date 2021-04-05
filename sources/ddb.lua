require 'finan'

COST    = 10000.00
SALVAGE = 1200.00
LIFE    = 8.
PERIOD  = 5.
  
io.write("Double-declining balance $ ")
print(format_num(ddb(COST, SALVAGE, LIFE, PERIOD), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the depreciation allowance of an asset with an initial
-- valoue of cost, an expected useful life, anda a final salvage valoue
-- for a specifield period of time, using the double-declining balance
-- method.
--
-- You purchased an office machine for $ 10,000. The useful life of this
-- machine is eight years, and the salvage value after eight years is 
-- $ 1,200. To calculate the depreciation expense for the fifth year
-- using the double-decline balance method.
--
-- Result $ 791.02
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.
