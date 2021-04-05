require 'finan'

COST    = 10000.00
SALVAGE = 1200.00
LIFE    = 10.
PERIOD  = 5.

io.write("Sum of the years digits $ ")
print(format_num(syd(COST, SALVAGE, LIFE, PERIOD), 2))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Calculates the sum of the years digits depreciation allowance of 
-- an asset.
--
-- Calculates the sum of the years digits depreciation allowance of an 
-- asset with an initial value of cost, an expected useful life, and a 
-- final value of salvage, for specifield period. (LOTUS, 1991)
--
-- You have am office machine worth $ 10,000. The useful life of this 
-- machine is 10 years, and the salvage balue in 10 years will be 
-- $ 1,200. Calculates the deprecition expense for the fifth year using
-- them sum of the yeras digits method.
--
-- Result = $ 960.00
--
-- LOTUS. @Functions and Macros Guide: Lotus 1-2-3 release 2.3.
-- Cambridge: Lotus Development Corporation, 1991.
