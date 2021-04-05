require 'finan'

I = percent2rate(5.5)

print("Rule of 72: " .. fmt("%.2f", r72(I)) .. " yearsn")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- The 'Rule of 72' is a simplified way to determine how long an 
-- investment will take to double - alternative to 'tdinv()'.
--
-- How much time in years will it take for a certain investment to 
-- be doubled at a rate of 5.5%?
--
-- Result 13.09 years
--
-- Rule Of 72
-- https://www.investopedia.com/terms/r/ruleof72.asp.
