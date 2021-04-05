require 'finan'

COST    = 10000.00
SALVAGE = 1200.00
LIFE    = 10.
  
io.write("Straight-line depreciation $ ")
print(format_num(sln(COST, SALVAGE, LIFE), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the straight-line depreciation allowance of an asset.
--
-- Calculates the straight-line depreciation allowance of an asset with 
-- an initial value of cost, an expected useful life, and a final value 
-- of salvage, for one period. (LOTUS, 1991)
--
-- You have am office machine worth $ 10,000. The useful life of this 
-- machine is 10 years, and the salvage balue in 10 years will be 
-- $ 1,200.
--
-- Result = $ 880.00
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.
