require 'finan'

INFLATION = {
  percent2rate(1.27), -- Month  1
  percent2rate(0.90), -- Month  2
  percent2rate(0.43), -- Month  3
  percent2rate(0.61), -- Month  4
  percent2rate(0.78), -- Month  5
  percent2rate(0.35), -- Month  6
  percent2rate(0.52), -- Month  7
  percent2rate(0.44), -- Month  8
  percent2rate(0.08), -- Month  9
  percent2rate(0.26), -- Month 10
  percent2rate(0.18), -- Month 11
  percent2rate(0.30)  -- Month 12
}


io.write("Accumulated inflation (rate) ......: ")
print(fmt("%8.6f", acrateinflat(INFLATION, 12)))
io.write("Accumulated inflation (percent) ...: ")
print(fmt("%4.2f", acrateinflat(INFLATION, 12) * 100) .. "%")

print()
io.write("Press <Enter> to finish...")
io.read '*l'

-- National Consumer Price Index in Brazil
-- The example of this program uses real inflation data
-- recorded in Brazil during the year 2016.
--
-- IPCA - Índice Nacional de Preços ao Consumidor - 2016
-- http://www.calculador.com.br/tabela/indice/IPCA/2016
--
-- Result = 0.062881 or 6.29%
