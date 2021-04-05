-- ********************************************************************* 
-- *                                                                   * 
-- *                                          Copyright (c) 2017-2021  * 
-- *                  Advanced Financial Mathematics for Language Lua  * 
-- *                                                                   * 
-- * Project ..........: finan.lua                                     * 
-- * Author ...........: Jose Augusto N. G. Manzano                    * 
-- * Also Known As ....: Augusto Manzano                               * 
-- * Build Date  ......: 2017, May                                     * 
-- * Update  ..........: 2021, Apr                                     * 
-- * Version  .........: 2.0 - beta                                    * 
-- *                                                                   * 
-- * For public domain without any warranty.                           * 
-- *                                                                   * 
-- * THIS SOFTWARE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY EXPRESS   * 
-- * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED * 
-- * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR        * 
-- * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE    * 
-- * FOR ANY  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR     * 
-- * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT * 
-- * OF SUBSTITUTE GOODS OR SERVICES LOSS OF USE, DATA, OR PROFITS     * 
-- * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF     * 
-- * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT         * 
-- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE * 
-- * USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH  * 
-- * DAMAGE.                                                           * 
-- *                                                                   * 
-- ********************************************************************* 

-- =======================
-- List of parameters used
-- =======================

-- param cod ...........: cost of debt
-- param coe ...........: cost of equity
-- param cost ..........: cost of the asset
-- param entry .........: value of the entry
-- param fraction ......: value was fraction 
-- param fv ............: future value
-- param i .............: interest
-- param inflation .....: value of inflation
-- param inv ...........: investment
-- param ir ............: inflation rate
-- param ivtr ..........: investment return 
-- param length ........: number of cash flow elements
-- param life ..........: useful life of the asset
-- param mvd ...........: market value of debt
-- param mve ...........: market value of equity
-- param n .............: term (period)
-- param nc ............: number of compoundings
-- param period ........: period for which depreciation
-- param pmt ...........: payment
-- param prc1 ..........: price value one
-- param prc2 ..........: price value two
-- param prf ...........: profit
-- param pv ............: present value
-- param range .........: series of cash flow range
-- param salvage .......: salvage value of the asset
-- param totdebt .......: total debt
-- param totincm .......: total income
-- param totliab .......: total liabilities
-- param type ..........: 0/1 = end/beginning of the period
-- param value .........: decimal number

-- ======================================
-- Auxiliary and support variables   
-- ======================================

   abs = math.abs
   fmt = string.format
   log = math.log
   pow = math.pow
   
-- ======================================
-- Financial functions: Implemented codes   
-- ======================================

-- Function: acrateinflat
-- Target: Calc. the acumulated rate of inflation.

   function acrateinflat(inflation, n)
     valimflat = 1
     for x = 1, n do
       valimflat = valimflat * (1 + inflation[x])
      end
     return valimflat - 1
   end

-- Function: apptrate
-- Target: Calc. the apparent rate.

   function apptrate(i, inflation)
     return (1 + inflation) * (1 + i) - 1
   end

-- Function: cagr()
-- Target: Compound annual growth rate.

   function cagr(pv, fv, n)
     return (pow((fv / pv), 1 / n) - 1) * 100
   end

-- Function: cas
-- Target: Calc. the constant amortization system.

   function cas(pv, n)
     return pv / n
   end

-- Function: cdiscfact()
-- Target: Calculates the cumulative discount factor.

   function cdiscfact(i, n, range)
     sum = 0.0
     for x = 0, n do 
  	   sum = sum + 1 / pow((1 + i), x)
       range[x] = sum - 1
     end
   end

-- Function: ci()
-- Target: Calculates the compound interest.

   function ci(i, nc, pv, n)
     return pv * pow((1 + (i / nc)), nc * n)
   end

-- Function: cpcdisc
-- Target: Calc. the commercial discount compound.

   function cpcdisc(fv, i, n)
     return fv * (1 - pow(1 - i, n))
   end

-- Function: cpcdiscfv
-- Target: Calc. the commercial discount compounded: future value.

   function cpcdiscfv(pv, i, n)
     return pv / pow(1 - i, n)
   end

-- Function: cpcdiscpv
-- Target: Calc. the commercial discount compounded: present value.

   function cpcdiscpv(fv, i, n)
     return fv * pow(1 - i, n)
   end

-- Function: cprdisc
-- Target: Calc. the rational compound discount.

   function cprdisc(fv, i, n)
     return fv * (1 - pow(1 + i, -n))
   end

-- Function: cprdiscfv
-- Target: Calc. the rational discount compounded: future value.

   function cprdiscfv(pv, i, n)
     return pv * pow(1 + i, n)
   end

-- Function: cprdiscpv
-- Target: Calc. the rational discount compounded: present value.

   function cprdiscpv(fv, i, n)
     return fv / pow(1 + i, n)
   end

-- Function: crd
-- Target: Calc. the constant rate of depreciation.

   function crd(cost, salvage, life)
     return 1 - pow(salvage / cost, 1.0 / life)
   end

-- Function: cterm
-- Target: Calc. the number of compounding periods.

   function cterm(i, fv, pv)
     return log(fv / pv) / log(1 + i)
   end

-- Function: ddb
-- Target: Calc. the depreciation allowance of an asset.

   function ddb(cost, salvage, life, period)
     deprec = 0
     if (period < life) then
       for i = 0, period - 1 do
 	     bookval = cost - deprec
  	     if (bookval - salvage > bookval * (1.0 / life) * 2) then
           cddb = bookval * (1.0 / life) * 2
         else
           cddb = bookval - salvage
         end
  	     deprec = deprec + cddb
       end
     else
       cddb = 0.0 / 0.0 -- cddb = nan
     end
     return cddb
   end

-- Function: discfact()
-- Target: Calculates the cumulative discount factor.

   function discfact(i, n, range)
     for x = 0, n do 
  	   range[x] = 1 / pow((1 + i), x)
     end
   end


-- Function: ecfv
-- Target: Calculate the amount by exponencial convention.

   function ecfv(pv, i, n, f)
     return pv * pow(1 + i, n + f)
   end

-- Function: eepmt
-- Target: Calc. the value of the provision of financing
--            with equal value of the provision and entrance.

   function eepmt(pv, i, n)
     return (pv * finratio(i, n)) / (1 + finratio(i, n))
   end

-- Function: effect
-- Target: Calc. the effective interest rate for
--            especified nominal rate and number of 
--            compounding periods.

   function effect(i, n)
     if (i <= 0.0 or n < 1) then
       ceffect = 0.0 / 0.0 -- ceffect = nan
     else
       ceffect = pow(1 + i / n, n) - 1
     end
     return ceffect
   end

-- Function: epmt
-- Target: Calc. the value of the provision of 
--            financing with value of the installment with 
--            entry.

   function epmt(pv, entry, i, n)
     return (pv - entry) * finratio(i, n)
   end

-- Function: eqvrate
-- Target: Calc. the equivalent rate.

   function eqvrate(i, n)
     return pow(1 + i, n) - 1
   end

-- Function: fas
-- Target: Calc. the French Amortization System (Price).

   function fas(pv, i, n) 
     return pv * ((pow(1 + i, n) * i) / (pow(1 + i, n) - 1 ))
   end

-- Function: finratio
-- Target: Calc. the financing ratio.

   function finratio(i, n)
     return i / (1 - pow(1 + i, -n))
   end

-- Function: frac2rate
-- Target: Calc. the fraction number fraction in percent.

   function frac2rate(fraction)
     return fraction * 100
   end

-- Function: fv
-- Target: Calc. the future value of an investment.

  function fv(pmt, i, n, type)
    cfv = 0.0
    if (type < 0 or type > 1) then
      cfv = 0.0 / 0.0 -- cfv = nan
    else
      cfv = pmt * ((pow(1 + i, n) - 1) / i)
      if (type == 1) then
        cfv = pmt * ((pow(1 + i, n) - 1) / i) * (1 + i)
      end
    end
    return cfv
  end

-- Function: iar()
-- Target: Inflation adjusted return.

   function iar(ivtr, ir)
     return (((1 + ivtr) / (1 + ir)) - 1) * 100
   end

-- Function: inflatrate
-- Target: Calc. the Inflation rate.

   function inflatrate(prc1, prc2) -- Taxa de inflação
     return (prc2 / prc1) - 1
   end

-- Function: intrate
-- Target: Calc. the compound rate of an investment.

   function intrate(fv, pv, n)
     return pow(fv / pv, 1 / n) - 1
   end

-- Function: irr
-- Target: Calc. the internal rate of return for a series os cash
--         flow values generated by an investment.
--         Accuracy up to 6 decimal places. 

   function irr(range, length)
     i = 0.0
     repeat
       i = i + 0.000001
       cnpv = 0
       for x = 1, length do
         cnpv = cnpv + range[x] / pow(1 + i, x)
       end
     until (cnpv <= 0)
     return i
   end

-- Function: lcfv
-- Target: Calculate the amount by linear convention.

   function lcfv(pv, i, n, f)
     return pv * pow(1 + i, n) * (1 + f * i)
   end


-- Function: lr()
-- Target: Calculate the leverage ratio.

   function lr(totliab, totdebt)
     return totdebt / totliab
   end

-- Function: mathfactor
-- Target: Converts a percent value to rate form math factor. 

   function mathfactor(i)
     return i / 100.0
   end

-- Function: moneycor
-- Target: Calc. the monetary correction. 

   function moneycor(pv, inflation, length) 
     valmoneycor = pv
     for  x = 1, length do
       valmoneycor = valmoneycor * (1 + inflation[x])
     end
     return valmoneycor   
   end

-- Function: moneydeprate
-- Target: Calc. the monetary devaluation. 

   function moneydeprate(inflation) 
     return inflation / (1 + inflation)
   end

-- Function: nominal
-- Target: Calc. the nominal annual interest rate. 

   function nominal(i, n)
     if (i <= 0.0 or n < 1) then
       cnominal = 0.0 / 0.0 -- cnominal = nan
     else
       cnominal = n * (pow(1 + i, 1 / n) - 1)
     end
     return cnominal
   end

-- Function: nper
-- Target: Calc. the number of time periods required for an invest. 

   function nper(i, pmt, pv, fv, type)
     if (i == 0) then
       cnper = ((fv + pv) / pmt) * -1
     else
       i1 = i + 1
       if (type == 1) then
         a1 = i1 * pmt / i
       else
         a1 = 1 * pmt / i
       end
       if ((a1 - fv) < 0) then
         a2 = log(fv - a1)
       else
         a2 = log(a1 - fv)
       end
       if ((a1 - fv) < 0) then
         a3 = log(pv * -1 - a1)
       else
         a3 = log(pv + a1)
       end
       a4 = log(i1)
       cnper = (a2 - a3) / a4
     end
     return cnper
   end

-- Function: npv
-- Target: Calc. the net present value of a series of future cash. 

   function npv(i, range, length)
     cnpv = 0.0
     for x = 1, length do
       cnpv = cnpv + range[x] / pow(1 + i, x)
     end
     return cnpv
   end

-- Function: overnight
-- Target: Calc. the over rate of one day for the applic. investment. 

   function overnight(pv, i, n, days)
     if (n == 0) then
       n = 30
     end
     return pv * pow(1 + (i / n), days)
   end

-- Function: paybper()
-- Target: Calculate the payback period. 

   function paybper(n, range, length)
     cashflow = range[1]
     years = 1
     if (n == 0) then 
       return abs(range[1]) / range[2]
     end
     for x = 2, length - 1 do
       cashflow = cashflow + range[x]
       if (cashflow > 0) then
         years = years + (cashflow - range[x]) / range[x]
         return years
       else 
         years = years + 1
       end
     end
   end

-- Function: percent2rate
-- Target: Converts a percentage value in the form of rate. 

   function percent2rate(i)
     return i / 100.0
   end

-- Function: pmt
-- Target: Calc. the payment on a loan present value.

   function pmt(pv, i, n, type) 
     cpmt = 0.0
     if (type < 0 or type > 1) then
       cpmt = 0.0 / 0.0 -- cpmt = nan
     else
       cpmt = pv * i / (1 - pow((1 + i), (n * -1)))
       if (type == 1) then
         cpmt = pv * i / (1 - pow((1 + i), (n * -1))) / (1 + i)
       end
     end
     return cpmt
   end

-- Function: pmtcan
-- Target: Calc. the montly loan payments according to Canadian.

   function pmtcan(pv, i, n)
     if (n == 0) then
       cpmtc = 0.0
     else
       if (i == 0) then
         cpmtc = pv / n
       else
         if (i > 0 and n > 0) then
           cpmtc = pmt(pv, pow(1 + i / 2, 2 / 12) - 1, n, 0)
         else
           cpmtc = 0.0 / 0.0 -- cpmtc = nan  
         end
       end
     end
     return cpmtc
   end

-- Function: pmtcan
-- Target: Calc. the montly loan payments according to USA.

   function pmtusa(pv, i, n)
     if (n == 0) then
       cpmtc = 0.0
     else
       if (i == 0) then
         cpmtc = pv / n
       else
         if (i > 0 and n > 0) then
           cpmtc = pmt(pv, pow(1 + i / 12, 12 / 12) - 1, n, 0)
         else
           cpmtc = 0.0 / 0.0 -- cpmtc = nan  
         end
       end
     end
     return cpmtc
   end

-- Function: profidx()
-- Target: Calculates the profitability index.

   function profidx(i, range, length)
     totpv = 0.0
     for x = 2, length do
       discfactor = 1 / pow((1 + i), x - 1)
       totpv = totpv + range[x] * discfactor
      end
     return totpv / abs(range[1])
   end

-- Function: proprate
-- Target: Calc. the proportional rate.

    function proprate(i, n)
      return i * n * 100
    end

-- Function: pv
-- Target: Calc. the present value.

   function pv(pmt, i, n, type)
     cpv = 0.0
     if (type < 0 or type > 1) then
       cpv = 0.0 / 0.0 -- cpv = nan
     else
       cpv = pmt * ((1 - pow((1 + i), (n * -1))) / i)
       if (type == 1) then
         cpv = pmt * ((1 - pow((1 + i), (n * -1))) / i) * (1 + i)
       end
     end
     return cpv
   end

-- Function: r72()
-- Target: Rule of 72 to calculate double time investment.

   function r72(i)
     return (72 / i) / 100
   end

-- Function: rate
-- Target: Returns the periodic interest rate.

   function rate(fv, pv, n, type)
     crate = 0.0
     if (type < 0 or type > 1) then
       crate = 0.0 / 0.0 -- crate = nan
     else
       crate = (pow((fv / pv), (1 / n)) - 1)
       if (type == 1) then
         crate = pow(1 + crate, 12) - 1
       end
     end
     return crate
   end

-- Function: rate2percent
-- Target: Converts a rate to percent form.

   function rate2percent(value)
     return value * 100
   end

-- Function: realrate
-- Target: Calc. the real rate. 

   function realrate(i, inflation)
     return ((1 + i) / (1 + inflation)) - 1
   end

-- Function: roi()
-- Target: Calculates the return on investment. 

   function roi(inv, prf)
     return (prf - abs(inv)) / abs(inv) * 100
   end

-- Function: sightval
-- Target: Calc. the amount at sight of financing a property. 

   function sightval(pmt, i, n)
     return pmt / finratio(i, n)
   end

-- Function: sln
-- Target: Calc. the straight-line depreciation allowance of an asset. 

   function sln(cost, salvage, life)
     return (cost - salvage) / life
   end

-- Function: spcdisc
-- Target: Calc. the simple commercial discount. 

   function spcdisc(fv, i, n)
     return fv * i * n
   end

-- Function: spcdiscfv
-- Target: Calc. the simple commercial discount on future value.

   function spcdiscfv(pv, i, n)
     return pv / (1 - i * n)
   end

-- Function: spcdiscpv
-- Target: Calc. the imple commercial discount on 
--            present value.

   function spcdiscpv(fv, i, n)
     return fv * (1 - i * n)
   end

-- Function: spintrst
-- Target: Calc. the simple intrest rate on an 
--            investment.

   function spintrst(pv, i, n)
     return pv * i * n
   end

-- Function: sprdisc
-- Target: Calc. the simple rational rate.

   function sprdisc(fv, i, n)
     return sprdiscpv(fv, i, n) * i * n
   end

-- Function: sprdiscfv
-- Target: Calc. the simple rational discount on future value.

   function sprdiscfv(pv, i, n)
     return pv * (1 + i * n) 
   end

-- Function: sprdiscpv
-- Target: Calc. the simple rational discount on present value.

   function sprdiscpv(fv, i, n)
     return fv / (1 + i * n)
   end

-- Function: tdinv()
-- Target: Calculate double time investment.

   function tdinv(i)
     return log(2) / log(1 + i)
   end

-- Function: syd
-- Target: Calc. the sum of the years digits depreciation allowance.

   function syd(cost, salvage, life, period)
     return (cost - salvage) * (life - period + 1) / (life * (life + 1) / 2)
   end

-- Function: term
-- Target: Calc. the number of payment periods of an investment.

   function term(pmt, i, fv, type)
     cterm = 0.0
     if (type < 0 or type > 1) then
       cterm = 0.0 / 0.0 -- cterm = nan
     else
       if (type == 0) then
         cterm = log(1 + (fv * i / pmt)) / log(1 + i)
       else
         cterm = log(1 + ((fv / (1 + i)) * i / pmt)) / log(1 + i)
       end
       if (fv < 0) then
         cterm = cterm * -1
       end
     end
     return cterm
   end

-- Function: wacc()
-- Objective: Calculates the weighted average cost of capital.

   function wacc(mve, mvd, coe, cod, i)
     return round((((mve / (mve + mvd)) * coe) + (((mvd / (mve + mvd)) * cod) * (1 - i))) * 1000) / 10.00
   end

-- Function: wentryfun
-- Target: Calculate the amount of a financing entry.

   function wentryfun(fv, pmt, i, n) 
     return fv - (pmt / finratio(i, n))
   end

-- =====================================================================
-- By: http://lua-users.org/wiki/FormattingNumbers - 2017.05.24
-- from sam_lie
-- Compatible with Lua 5.0 and 5.1.
-- Disclaimer: use at own risk especially for hedge fund reports :-)
--
-- amount = 1333444.1
-- print(format_num(amount,2))
-- print(format_num(amount,-2,"US$"))
-- 
-- amount = -22333444.5634
-- print(format_num(amount,2,"$"))
-- print(format_num(amount,2,"$","()"))
-- print(format_num(amount,3,"$","NEG "))
--
-- Output:
-- 
-- 1,333,444.10
-- US$1,333,400
-- -$22,333,444.56
-- ($22,333,444.56)
-- NEG $22,333,444.563
-- =====================================================================


-- Function: comma_value
-- Target: Add comma to separate thousands.

   function comma_value(amount)
     local formatted = amount
     while true do  
       formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
       if (k==0) then
         break
       end
     end
     return formatted
   end

-- Function: format_num
-- Target: Given a numeric value formats output with comma to separate 
-- thousands and rounded to given decimal places.

   function format_num(amount, decimal, prefix, neg_prefix)
     local str_amount,  formatted, famount, remain
     decimal = decimal or 2  -- default 2 decimal places
     neg_prefix = neg_prefix or "-" -- default negative sign
     famount = math.abs(round(amount,decimal))
     famount = math.floor(famount)
     remain = round(math.abs(amount) - famount, decimal)
     -- comma to separate the thousands
     formatted = comma_value(famount)
     -- attach the decimal portion
     if (decimal > 0) then
       remain = string.sub(tostring(remain),3)
       formatted = formatted .. "." .. remain ..
       string.rep("0", decimal - string.len(remain))
     end
     -- attach prefix string e.g '$' 
     formatted = (prefix or "") .. formatted 
     -- if value is negative then format accordingly
     if (amount < 0) then
       if (neg_prefix == "()") then
         formatted = "("..formatted ..")"
       else
         formatted = neg_prefix .. formatted 
       end
     end
     return formatted
   end

-- Function: round
-- Target: Rounds a number to the nearest decimal places.

   function round(val, decimal)
     if (decimal) then
       return math.floor((val * 10 ^ decimal) + 0.5) / (10 ^ decimal)
     else
       return math.floor(val + 0.5)
     end
   end
