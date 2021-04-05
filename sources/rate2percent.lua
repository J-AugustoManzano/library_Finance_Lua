require 'finan'

VALUE = 0.105000
  
io.write("Rate value in percent = ")
print(fmt("%4.2f", rate2percent(VALUE)) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- Converts a rate value to percent form.
--
-- Display rate 0.1050 in percent form.
--
-- Result = 10.50%
