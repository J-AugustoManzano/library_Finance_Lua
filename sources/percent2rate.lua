require 'finan'

I = 10.5
  
io.write("Percent value in rate = ")
print(fmt("%8.6f", percent2rate(I)))

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Converts a percent value to rate form.
--
-- Display percent 10.5 in rate form.
--
-- Result = 0.105000
